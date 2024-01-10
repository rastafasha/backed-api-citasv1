<?php

namespace App\Models;

use App\Models\Payment;
use App\Jobs\PaymentRegisterJob;
use App\Mail\NewPaymentRegisterMail;
use Illuminate\Support\Facades\Mail;
use App\Models\Appointment\Appointment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Payment extends Model
{
    use HasFactory, SoftDeletes;

    /*
    |--------------------------------------------------------------------------
    | goblan variables
    |--------------------------------------------------------------------------
    */
    protected $fillable = [

        'referencia',
        'metodo',
        'bank_name',
        'monto',
        'nombre',
        'email',
        'patient_id',
        'appointment_id',
        'image',
        'fecha',
        'status'
    ];

    const APPROVED = 'APPROVED';
    const PENDING = 'PENDING';
    const REJECTED = 'REJECTED';

    /*
    |--------------------------------------------------------------------------
    | functions
    |--------------------------------------------------------------------------
    */

    protected static function boot(){

        parent::boot();

        static::created(function($payment){

            // PaymentRegisterJob::dispatch(
            //     $user
            // )->onQueue("high");

        Mail::to('mercadocreativo@gmail.com')->send(new NewPaymentRegisterMail($payment));

        });


    }

    public static function statusTypes()
    {
        return [
            self::APPROVED, self::PENDING, self::REJECTED
        ];
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */
    public function users()
    {
        return $this->belongsTo(User::class, 'id');
    }

    public function payments()
    {
        return $this->hasMany(Payment::class);
    }
    public function appointment()
    {
        return $this->belongsTo(Appointment::class, 'appointment_id');
    }


    /*
    |--------------------------------------------------------------------------
    | Search
    |--------------------------------------------------------------------------
    */

    public static function search($query = ''){
        if(!$query){
            return self::all();
        }
        return self::where('referencia', 'like', "%$query%")
        ->orWhere('monto', 'like', "%$query%")
        ->orWhere('metodo', 'like', "%$query%")
        ->orWhere('email', 'like', "%$query%")
        ->orWhere('nombre', 'like', "%$query%")
        ->get();
    }
}
