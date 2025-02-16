<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Appointment\Appointment;
use App\Models\Appointment\AppointmentPay;
use App\Models\Appointment\AppointmentAttention;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Faker\Factory as Faker;

class AppointmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create 10 appointments with related records
        Appointment::factory()->count(10)->create()->each(function($p) {
            $faker = Faker::create();
            if($p->status == 2){
                AppointmentAttention::create([ 
                    "appointment_id" => $p->id,
                    "patient_id" => $p->patient_id,
                    "description" => $faker->text($maxNbChars = 300),
                    "receta_medica" => json_encode([
                        [
                            "name_medical" => $faker->word(),
                            "uso" => $faker->sentence(3),
                            "dosis" => $faker->randomElement(['1x día', '2x día', '3x día']),
                            "duracion" => $faker->randomElement(['7 días', '14 días', '30 días'])
                        ],
                    ])
                ]);
            }
            if($p->status_pay == 2){
                AppointmentPay::create([
                    "appointment_id" => $p->id,
                    "amount" => 50,
                    "method_payment" => $faker->randomElement([
                        "Efectivo",
                        "Transferencia", 
                        "Pago Movil",
                        "Zelle",
                        "Square",
                        "T.Debito",
                        "T.Credito"
                    ]),
                ]);
            }else{
                AppointmentPay::create([
                    "appointment_id" => $p->id,
                    "amount" => $p->amount,
                    "method_payment" => $faker->randomElement(["Efectivo","Trasferencia","Pago Movil","Zelle","Square", "T.Debito", "T.Credito"]),
                ]);
            }
        });
        // php artisan db:seed --class=AppointmentSeeder
    }
}
