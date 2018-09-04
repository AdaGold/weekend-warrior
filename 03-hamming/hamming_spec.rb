gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming'

describe Hamming do
  it  "Check identical strands" do
    expect(Hamming.compute('A', 'A')).must_equal 0
  end

  it "Check long identical strands" do
    expect (Hamming.compute('GGACTGA', 'GGACTGA')).must_equal 0
  end

  it "Check complete distance in single nucleotide strands" do
    expect(Hamming.compute('A', 'G')).must_equal 1
  end

  it "Check complete distance in small strands" do
    expect(Hamming.compute('AG', 'CT')).must_equal 2
  end

  it "Check small distance in small strands" do
    expect(Hamming.compute('AT', 'CT')).must_equal 1
  end

  it "Check small distance" do
    expect(Hamming.compute('GGACG', 'GGTCG')).must_equal 1
  end

  it "Check small distance in long strands" do
    expect(Hamming.compute('ACCAGGG', 'ACTATGG')).must_equal 2
  end

  it "Check non_unique character in first strand" do
    expect(Hamming.compute('AGA', 'AGG')).must_equal 1
  end

  it "Check non unique character in second strand" do
    expect(Hamming.compute('AGG', 'AGA')).must_equal 1
  end

  it "Check large_distance" do
    expect(Hamming.compute('GATACA', 'GCATAA')).must_equal 4
  end

  it "Check large distance in off by one strand" do
    expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).must_equal 9
  end

  it "Check Empty Strands" do
    expect(Hamming.compute('', '')).must_equal 0
  end

  it "Check disallow first strand longer" do
    expect ( proc { Hamming.compute('AATG', 'AAA') }).must_raise ArgumentError
  end

  it "Check disallow second strand longer" do
    expect( proc { Hamming.compute('ATA', 'AGTG') }).must_raise ArgumentError
  end
end
