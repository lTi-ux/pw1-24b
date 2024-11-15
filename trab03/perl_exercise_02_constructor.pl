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

# Constructor personalizado
around BUILDARGS => sub {
    my $orig  = shift;
    my $class = shift;

    if ( @_ == 1 && ! ref $_[0] ) {
        return $class->$orig( nombre => $_[0], especie => 'Desconocido' );
    }
    else {
        return $class->$orig(@_);
    }
};

package main;
my $animal1 = Animal->new('Luna');
my $animal2 = Animal->new(nombre => 'Sol', especie => 'Gato');

print "Nombre: ", $animal1->nombre, ", Especie: ", $animal1->especie, "\n";
print "Nombre: ", $animal2->nombre, ", Especie: ", $animal2->especie, "\n";
