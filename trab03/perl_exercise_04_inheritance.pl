#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Moose;

# Clase base
package Animal;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');
has 'especie' => (is => 'rw', isa => 'Str');

sub sonido {
    return "Hace un sonido";
}

# Clase derivada
package Perro;
use Moose;
extends 'Animal';

sub sonido {
    return "Ladra";
}

package main;
my $perro = Perro->new(nombre => 'Luna', especie => 'Perro');
print "El perro ", $perro->nombre, " ", $perro->sonido(), "\n";
