<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Carbon\Carbon;
use App\Models\Appointment\Appointment;

class RegisterAppointment extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $appointment;

    public function __construct($appointment)
    {
        $this->appointment = $appointment;
    }

    /**
     * Get the message content definition.
     */
    public function build()
    {

        date_default_timezone_set('America/Caracas');
        //fecha simulada

        $simulate_hour_number =date("2023-12-20 08:30:00"); //strtotime(date("2023-12-15 8:00:35"));
        // $appointments = Appointment::whereDate("date_appointment", "2023-12-20")//now()->format("Y-m-d")
        //fecha simulada
        
        $appointments = Appointment::whereDate("date_appointment", now()->format("Y-m-d"))
                                    ->where("status",1)
                                    ->where("cron_state",1)
                                    ->get();  

        // $now_time_number = strtotime($simulate_hour_number);
        $now_time_number = strtotime(now()->format("Y-m-d h:i:s")); 
        $patients = collect([]);

        foreach($appointments as $key => $appointment){
            
            $hour_start = $appointment->doctor_schedule_join_hour->doctor_schedule_hour->hour_start;
            $hour_end = $appointment->doctor_schedule_join_hour->doctor_schedule_hour->hour_end;
            //fecha simulada
            // $hour_start = strtotime(Carbon::parse(date("2023-12-20")." ".$hour_start)->subHour());
            // $hour_end = strtotime(Carbon::parse(date("2023-12-20")." ".$hour_end)->subHour());
            //fecha real
            $hour_start = strtotime(Carbon::parse(date("Y-m-d")." ".$hour_start)->subHour());
            $hour_end = strtotime(Carbon::parse(date("Y-m-d")." ".$hour_end)->subHour());
            error_log($hour_start.' '.$hour_end.' '.$simulate_hour_number );
            if( $hour_start <= $now_time_number && $hour_end >= $now_time_number ){
                $patients->push([
                    "name"=> $appointment->patient->name,
                    "surname"=> $appointment->patient->surname,
                    // "avatar"=> $appointment->avatar ? env("APP_URL")."storage/".$this->resource->avatar : null,
                    "avatar"=> $appointment->avatar ? env("APP_URL").$this->resource->avatar : null,
                    "email"=> $appointment->patient->email,
                    "speciality_name"=> $appointment->speciality->name,
                    "phone"=> $appointment->patient->phone,
                    "n_doc"=> $appointment->patient->n_doc,
                    "hour_start_format"=> Carbon::parse(date("Y-m-d")." ".$appointment->doctor_schedule_join_hour->doctor_schedule_hour->hour_start)->format("h:i A"),
                    "hour_end_format"=> Carbon::parse(date("Y-m-d")." ".$appointment->doctor_schedule_join_hour->doctor_schedule_hour->hour_end)->format("h:i A"),
                ]);
                $appointment->update(["cron_state"=>2]);
            }
        }

        // $apointment = $this->apointment;
        // return $this->view('emails.apointment_register', compact('appointment'));
        return $this->view('emails.apointment_register');
    }

    /**
     * Get the message envelope.
     */
    // public function envelope(): Envelope
    // {
    //     return new Envelope(
    //         subject: 'Register Appointment',
    //     );
    // }
}
