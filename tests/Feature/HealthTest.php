<?php
namespace Tests\Feature;

use Tests\TestCase;

class HealthTest extends TestCase
{
    public function test_health_endpoint_works(): void
    {
        $response = $this->getJson('/api/health');
        $response->assertOk()->assertJson(['ok' => true]);
    }
}
