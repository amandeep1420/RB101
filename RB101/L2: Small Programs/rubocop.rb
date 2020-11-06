=begin

- To use rubocop, simply call it with the filename -> rubocop file.rb

- rubocop will give location, offense type, explanation, and offending item itself. Example below:

=end

rubocop.rb:1:1: F: Lint/Syntax: embedded document meets end of file (and they embark on a romantic journey)
(Using Ruby 2.4 parser; configure using TargetRubyVersion parameter, under AllCops)
=begin
^^^^^^

=begin

- offense types: 
  C - Convention
  W - Warning
  E - Error
  F - Fatal Error
  
- to see a summarized view of which 'cops' complained in your document, use the following command:

rubocop file.rb --format offenses

- to configure rubocop, throw a .rubocop.yml file in the same directory as the files you're working with.

ez pz.
