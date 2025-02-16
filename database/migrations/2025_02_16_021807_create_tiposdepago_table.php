<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTiposdepagoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tiposdepago', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tipo', 250);
            $table->string('ciorif', 250);
            $table->string('telefono', 250);
            $table->string('bankAccount', 250);
            $table->string('bankName', 250);
            $table->string('bankAccountType', 250);
            $table->string('email', 250);
            $table->string('user', 250);
            $table->enum('status', [
                'ACTIVE', 'INACTIVE'
                ])->default('INACTIVE');
            
            
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tiposdepago');
    }
}
