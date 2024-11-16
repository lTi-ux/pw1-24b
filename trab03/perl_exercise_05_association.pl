#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Moose;

# Clase Persona
package Persona;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');
has 'mascota' => (is => 'rw', isa => 'Maybe[Animal]');

# Clase Animal
package Animal;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');
has 'especie' => (is => 'rw', isa => 'Str');

package main;
my $animal = Animal->new(nombre => 'Luna', especie => 'Perro');
my $persona = Persona->new(nombre => 'Laura', mascota => $animal);

print $persona->nombre, " tiene una mascota llamada ", $persona->mascota->nombre, " que es un ", $persona->mascota->especie, "\n";
