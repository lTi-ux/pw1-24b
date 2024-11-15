#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Moose;

# Definición de la clase
package Animal;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');
has 'especie' => (is => 'rw', isa => 'Str');

# Métodos Getter y Setter personalizados
sub get_nombre {
    my $self = shift;
    return $self->nombre;
}

sub set_nombre {
    my ($self, $nombre) = @_;
    $self->nombre($nombre);
}

package main;
my $animal = Animal->new(nombre => 'Luna', especie => 'Perro');
print "Nombre: ", $animal->get_nombre(), "\n";

$animal->set_nombre('Estrella');
print "Nombre actualizado: ", $animal->get_nombre(), "\n";
