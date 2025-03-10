<?php

namespace Database\Factories\Appointment;

use App\Models\User;
use App\Models\Patient\Patient;
use App\Models\Doctor\Specialitie;
use App\Models\Appointment\Appointment;
use App\Models\Doctor\DoctorScheduleDay;
use App\Models\Doctor\DoctorScheduleJoinHour;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Appointment\Appointment>
 */
class AppointmentFactory extends Factory
{
    protected $model = Appointment::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $doctor = User::whereHas("roles",function($q){
            $q->where("name","like","%DOCTOR%");
        })->inRandomOrder()->first();
        
        $date_appointment = $this->faker->dateTimeBetween("2024-01-01 00:00:00", "2024-12-25 23:59:59");
        $status = $this->faker->randomElement([1, 2]);
        
        $doctor_schedule_day = DoctorScheduleDay::where("user_id",$doctor->id)->inRandomOrder()->first();
        $doctor_schedule_join_hour = $doctor_schedule_day ? 
            DoctorScheduleJoinHour::where("doctor_schedule_day_id",$doctor_schedule_day->id)->inRandomOrder()->first() : 
            null;

        return [
            "doctor_id" => $doctor->id,
            "patient_id" => Patient::count() > 0 ? Patient::inRandomOrder()->first()->id : null,
            "date_appointment" => $date_appointment,
            "speciality_id" => Specialitie::count() > 0 ? Specialitie::all()->random()->id : null,
            'doctor_schedule_join_hour_id' => 1,
            // "doctor_schedule_join_hour_id" => $doctor_schedule_join_hour ? $doctor_schedule_join_hour->id : null,
            "user_id" => User::count() > 0 ? User::all()->random()->id : null,
            "amount" => $this->faker->randomElement([100,150,200,250,80,120,95,75,160,230,110]),
            "status" => $status,
            "status_pay" => $this->faker->randomElement([1, 2]),
            "date_attention" => $status == 2 ? $this->faker->dateTimeBetween($date_appointment, "2024-12-25 23:59:59") : NULL,
        ];
    }
}
