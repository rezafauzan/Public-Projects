<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TechstackSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('techstacks')->insert([
            [
                'id' => 1,
                'techstack_name' => 'HTML',
                'techstack_type' => 'Language',
                'techstack_icon' => 'assets/img/vendor/html-5-svgrepo-com.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:31:21',
                'updated_at' => '2024-07-30 12:31:21',
            ],
            [
                'id' => 2,
                'techstack_name' => 'CSS',
                'techstack_type' => 'Language',
                'techstack_icon' => 'assets/img/vendor/css-3-svgrepo-com.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:31:21',
                'updated_at' => '2024-07-30 12:31:21',
            ],
            [
                'id' => 3,
                'techstack_name' => 'JS',
                'techstack_type' => 'Language',
                'techstack_icon' => 'assets/img/vendor/js-official-svgrepo-com.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:31:21',
                'updated_at' => '2024-07-30 12:31:21',
            ],
            [
                'id' => 4,
                'techstack_name' => 'PHP',
                'techstack_type' => 'Language',
                'techstack_icon' => 'assets/img/vendor/php3-svgrepo-com.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:31:21',
                'updated_at' => '2024-07-30 12:31:21',
            ],
            [
                'id' => 5,
                'techstack_name' => 'Javascript',
                'techstack_type' => 'Language',
                'techstack_icon' => 'assets/img/vendor/js-official-svgrepo-com.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:31:21',
                'updated_at' => '2024-07-30 12:31:21',
            ],
            [
                'id' => 6,
                'techstack_name' => 'Java',
                'techstack_type' => 'Language',
                'techstack_icon' => 'assets/img/vendor/',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:31:21',
                'updated_at' => '2024-07-30 12:31:21',
            ],
            [
                'id' => 7,
                'techstack_name' => 'Bootstrap',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/bootstrap-svgrepo-com.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 8,
                'techstack_name' => 'Tailwinds',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/tailwindcss-white-full.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 9,
                'techstack_name' => 'Laravel',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/laravel-original.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 10,
                'techstack_name' => 'Codeigniter',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/codeigniter-svgrepo-com.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 11,
                'techstack_name' => 'Springboot',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/Spring_Boot.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 12,
                'techstack_name' => 'Quarkus',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/quarkus-icon-svgrepo-com.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 13,
                'techstack_name' => 'ExpressJS',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 14,
                'techstack_name' => 'NextJS',
                'techstack_type' => 'Framework',
                'techstack_icon' => 'assets/img/vendor/',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:38:54',
                'updated_at' => '2024-07-30 12:38:54',
            ],
            [
                'id' => 15,
                'techstack_name' => 'React',
                'techstack_type' => 'Library',
                'techstack_icon' => 'assets/img/vendor/React-icon.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:42:30',
                'updated_at' => '2024-07-30 12:42:30',
            ],
            [
                'id' => 16,
                'techstack_name' => 'NodeJS',
                'techstack_type' => 'Runtime',
                'techstack_icon' => 'assets/img/vendor/Node.js_logo.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:42:30',
                'updated_at' => '2024-07-30 12:42:30',
            ],
            [
                'id' => 17,
                'techstack_name' => 'SASS',
                'techstack_type' => 'Preprocessor',
                'techstack_icon' => 'assets/img/vendor/sass-full-svgrepo-com.svg',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:45:26',
                'updated_at' => '2024-07-30 12:45:26',
            ],
            [
                'id' => 18,
                'techstack_name' => 'Webpack',
                'techstack_type' => 'Bundler',
                'techstack_icon' => 'assets/img/vendor/',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:45:26',
                'updated_at' => '2024-07-30 12:45:26',
            ],
            [
                'id' => 19,
                'techstack_name' => 'Vite',
                'techstack_type' => 'Bundler',
                'techstack_icon' => 'assets/img/vendor/',
                'techstack_category_id' => 1,
                'created_at' => '2024-07-30 12:45:26',
                'updated_at' => '2024-07-30 12:45:26',
            ],
            [
                'id' => 20,
                'techstack_name' => 'MySQL',
                'techstack_type' => 'Database Management System',
                'techstack_icon' => 'assets/img/vendor/mysql-logo-svgrepo-com.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:47:53',
                'updated_at' => '2024-07-30 12:47:53',
            ],
            [
                'id' => 21,
                'techstack_name' => 'PostgreSQL',
                'techstack_type' => 'Database Management System',
                'techstack_icon' => 'assets/img/vendor/postgresql.svg',
                'techstack_category_id' => 2,
                'created_at' => '2024-07-30 12:47:53',
                'updated_at' => '2024-07-30 12:47:53',
            ],
        ]);
        
    }
}
