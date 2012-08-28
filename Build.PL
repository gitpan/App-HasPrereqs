
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Check whether your Perl installation has prerequisites in dist.ini",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "App-HasPrereqs",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "App::HasPrereqs",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Config::IniFiles" => 0,
    "Log::Any" => 0,
    "Module::Path" => 0,
    "Perinci::CmdLine" => 0,
    "Sort::Versions" => 0,
    "perl" => "5.010000"
  },
  "script_files" => [
    "bin/has-prereqs"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
