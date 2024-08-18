<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('techstacks', function (Blueprint $table) {
            $table->id();
            $table->string('techstack_name');
            $table->string('techstack_type');
            $table->string('techstack_icon');
            $table->unsignedBigInteger('techstack_category_id');
            $table->timestamps();

            $table->foreign('techstack_category_id')->references('id')->on('techstack_categories');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('techstack');
    }
};
