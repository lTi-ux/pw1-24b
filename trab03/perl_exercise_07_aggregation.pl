#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Moose;

# Clase Estudiante
package Estudiante;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');

# Clase Curso
package Curso;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');
has 'estudiantes' => (is => 'rw', isa => 'ArrayRef[Estudiante]', default => sub { [] });

sub agregar_estudiante {
    my ($self, $estudiante) = @_;
    push @{$self->estudiantes}, $estudiante;
}

package main;
my $curso = Curso->new(nombre => 'Programación');
my $estudiante1 = Estudiante->new(nombre => 'Laura');
my $estudiante2 = Estudiante->new(nombre => 'Esther');

$curso->agregar_estudiante($estudiante1);
$curso->agregar_estudiante($estudiante2);

print "El curso ", $curso->nombre, " tiene los siguientes estudiantes:\n";
foreach my $estudiante (@{$curso->estudiantes}) {
    print $estudiante->nombre, "\n";
}
