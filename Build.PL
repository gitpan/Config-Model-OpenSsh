#
# This file is part of Config-Model-OpenSsh
#
# This software is Copyright (c) 2012 by Dominique Dumont.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
#    Copyright (c) 2008-2012 Dominique Dumont.
#
#    This file is part of Config-Model-OpenSsh.
#
#    Config-Model is free software; you can redistribute it and/or
#    modify it under the terms of the GNU Lesser Public License as
#    published by the Free Software Foundation; either version 2.1 of
#    the License, or (at your option) any later version.
#
#    Config-Model is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    Lesser Public License for more details.
#
#    You should have received a copy of the GNU Lesser Public License
#    along with Config-Model; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
#    02110-1301 USA

use Module::Build;
use Data::Dumper ;

use warnings FATAL => qw(all) ;
use strict ;

require 5.010;

my %model_files = map { ($_, $_ ) } glob("lib/Config/Model/*.d/*") ;

my $build = Module::Build->new
  (
   module_name   => 'Config::Model::OpenSsh',
   license       => 'lgpl',
   dist_author   => "Dominique Dumont (ddumont at cpan dot org)",
   dist_abstract => "OpenSsh configuration files graphical editor",
   model_files => \%model_files ,
 
  'build_requires' => {
    'Module::Build' => '0.3601',
    'Test::Differences' => '0',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'Any::Moose' => '0',
    'Config::Model' => '2.015',
    'File::Slurp' => '0',
    'Log::Log4perl' => '1.11',
    'Module::Build' => '0.3601'
  },
  'recommends' => {
    'Config::Model::Backend::Augeas' => '0',
    'Config::Model::CursesUI' => '0',
    'Config::Model::TkUI' => '0'
  },

    meta_merge => {
        resources => {
            homepage => 'http://config-model.wiki.sourceforge.net',
            MailingList => 'https://lists.sourceforge.net/lists/listinfo/config-model-users',
            repository => 'http://config-model.hg.sourceforge.net:8000/hgroot/config-model/config-model',
        },
   },
   add_to_cleanup => [qw/wr_test/] ,
  );


$build->add_build_element('pl');
$build->add_build_element('model'); # see model_files above

$build->create_build_script;
