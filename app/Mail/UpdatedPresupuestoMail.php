<?php

namespace App\Mail;

use App\Models\Presupuesto;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class UpdatedPresupuestoMail extends Mailable
{
    use Queueable, SerializesModels;

    public $presupuesto;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Presupuesto $presupuesto)
    {
        $this->presupuesto = $presupuesto;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

            return $this
            ->subject('Klyntic: Presupuesto Actualizado')
            ->view('emails.admin.new_presupuesto_register',['presupuesto' => $this->presupuesto]);
        
    }
}
