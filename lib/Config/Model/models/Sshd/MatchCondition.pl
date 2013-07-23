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
    'class_description' => 'Conidtion to apply to identify matched items inside 
a sshd_config match block.',
    'name' => 'Sshd::MatchCondition',
    'copyright' => [
      '2009-2011 Dominique Dumont'
    ],
    'author' => [
      'Dominique Dumont'
    ],
    'license' => 'LGPL2',
    'element' => [
      'User',
      {
        'value_type' => 'uniline',
        'type' => 'leaf',
        'description' => 'Define the User criteria of a conditional block. The value of this field is a pattern that is tested against user name.'
      },
      'Group',
      {
        'value_type' => 'uniline',
        'type' => 'leaf',
        'description' => 'Define the Group criteria of a conditional block. The value of this field is a pattern that is tested against group name.'
      },
      'Host',
      {
        'value_type' => 'uniline',
        'type' => 'leaf',
        'description' => 'Define the Host criteria of a conditional block. The value of this field is a pattern that is tested against host name.'
      },
      'Address',
      {
        'value_type' => 'uniline',
        'type' => 'leaf',
        'description' => 'Define the Address criteria of a conditional block. The value of this field is a pattern that is tested against the address of the incoming connection.'
      }
    ]
  }
]
;

