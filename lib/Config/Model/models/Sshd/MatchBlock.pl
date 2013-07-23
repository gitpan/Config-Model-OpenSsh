#
# This file is part of Config-Model-OpenSsh
#
# This software is Copyright (c) 2013 by Dominique Dumont.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
[
  {
    'class_description' => 'Class to represent a Match block inside a sshd_config file. 

It\'s made of a list of conditions to match and a list of 
parameters to apply to the matched items.',
    'name' => 'Sshd::MatchBlock',
    'copyright' => [
      '2009-2011 Dominique Dumont'
    ],
    'author' => [
      'Dominique Dumont'
    ],
    'license' => 'LGPL2',
    'element' => [
      'Condition',
      {
        'type' => 'node',
        'description' => 'Specify the condition (User, Group, Host, Adress) necessary for this Match block to be applied',
        'config_class_name' => 'Sshd::MatchCondition'
      },
      'Settings',
      {
        'type' => 'node',
        'description' => 'Defines the sshd_config parameters that will override general settings when all defined User, Group, Host and Address patterns match.',
        'config_class_name' => 'Sshd::MatchElement'
      }
    ]
  }
]
;

