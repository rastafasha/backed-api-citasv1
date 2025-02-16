<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePatienPersonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patien_persons', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name_companion', 250);
            $table->string('surname_companion', 250);
            $table->string('mobile_companion', 250);
            $table->string('relationship_companion', 250);
            $table->string('name_responsable', 250);
            $table->string('surname_responsable', 250);
            $table->string('mobile_responsable', 50);
            $table->text('address')->nullable();
            $table->string('relationship_responsable', 150);

            
            // Provider IDs
            $table->unsignedBigInteger('patient_id')->nullable();
            
            $table->timestamps();
            $table->softDeletes();

            // Foreign keys for provider relationships
            $table->foreign('patient_id')->references('id')->on('patients')->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patien_persons');
    }
}
