gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rna_transcription'

describe "RNA Complement Test" do
  it "Check Rna complement of cytosine is guanine" do
    expect('G').must_equal Complement.of_dna('C')
  end
  it "Check rna complement of guanine is cytosine" do
    expect('C').must_equal Complement.of_dna('G')
  end

  it "Check rna complement of thymine is adenine" do
    expect('A').must_equal Complement.of_dna('T')
  end

  it "Check rna complement of adenine is uracil" do
    expect('U').must_equal Complement.of_dna('A')
  end

  it "Check rna complement" do
    expect('UGCACCAGAAUU').must_equal Complement.of_dna('ACGTGGTCTTAA')
  end

  it "Check dna complement of cytosine is guanine" do
    expect('G').must_equal Complement.of_rna('C')
  end

  it "Check dna complement of guanine is cytosine" do
    expect('C').must_equal Complement.of_rna('G')
  end

  it "Check dna complement of uracil is adenine" do
    expect('A').must_equal Complement.of_rna('U')
  end

  it "Check dna complement of adenine is thymine" do
    expect('T').must_equal Complement.of_rna('A')
  end

  it "Check dna complement" do
    expect('ACTTGGGCTGTAC').must_equal Complement.of_rna('UGAACCCGACAUG')
  end

  it "Check dna raises argument error" do
    expect(proc { Complement.of_dna('U') }).must_raise ArgumentError
  end

  it "Check rna raises argument error" do
    expect( proc { Complement.of_rna('T') } ).must_raise ArgumentError
  end

  it "Check rna raises argument error on completely invalid input" do
    expect(proc { Complement.of_rna('XXX') }).must_raise ArgumentError
  end

  it "Check dna raises argument error on completely invalid input" do
    expect( proc { Complement.of_dna('XXX') }).must_raise ArgumentError
  end

  it "Check dna raises argument error on partially invalid input" do
    expect(proc { Complement.of_dna('ACGTXXXCTTAA') }).must_raise ArgumentError
  end

  it "Check rna raises argument error on partially invalid input" do
    expect(proc { Complement.of_rna('UGAAXXXGACAUG') }).must_raise ArgumentError
  end
end
