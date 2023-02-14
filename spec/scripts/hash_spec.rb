
describe "person.rb" do
  
  it "prints Hash of '{:name => \"Osi\", :age => 24, :occupation => \"Songwriter\"}', when input is 'Osi 24 Songwriter'", points: 1 do
    # Un-require person.rb
    person = $".select{|r| r.include? 'person.rb'}
    $".delete(person.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("Osi 24 Songwriter\n")
    
    response = /\{:name=>"Osi", :age=>24, :occupation=>"Songwriter"\}/

    output = with_captured_stdout { require_relative('../../person')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a name, age, and occupation separated by spaces:\\n{:name=>\"Osi\", :age=>24, :occupation=>\"Songwriter\"}', but was #{output}."
  end
end


describe "person.rb" do
  
  it "prints Hash of '{:name => \"Lia\", :age => 32, :occupation => \"Engineer\"}', when input is 'Lia 32 Engineer'", points: 1 do
    # Un-require person.rb
    person = $".select{|r| r.include? 'person.rb'}
    $".delete(person.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("Lia 32 Engineer\n")
    
    response = /\{:name=>"Lia", :age=>32, :occupation=>"Engineer"\}/

    output = with_captured_stdout { require_relative('../../person')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a name, age, and occupation separated by spaces:\\n{:name=>\"Lia\", :age=>32, :occupation=>\"Engineer\"}', but was #{output}."
  end
end

describe "find_value.rb" do
  
  it "prints Hash of 'Could not find the integer 4', when input is '4'", points: 1 do
    # Un-require find_value.rb
    find_value = $".select{|r| r.include? 'find_value.rb'}
    $".delete(find_value.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("4\n")
    allow_any_instance_of(Kernel).to receive(:rand).and_return(2)
    
    response = /Could not find the integer 4/i

    output = with_captured_stdout { require_relative('../../find_value')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter an integer to find:\\nCould not find the integer 4', but was #{output}."
  end
end

describe "find_value.rb" do
  
  it "prints Hash of '100 is under the key: a.', when input is '100'", points: 1 do
    # Un-require find_value.rb
    find_value = $".select{|r| r.include? 'find_value.rb'}
    $".delete(find_value.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("100\n")
    allow_any_instance_of(Kernel).to receive(:rand).and_return(12)
    
    response = /100 is under the key: a/i

    # expect { require_relative("../../find_value") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../find_value')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter an integer to find:\\n100 is under the key: a', but was #{output}."
  end
end

describe "find_value.rb" do
  
  it "prints Hash of '22 is under the key: e.', when input is '22'", points: 1 do
    # Un-require find_value.rb
    find_value = $".select{|r| r.include? 'find_value.rb'}
    $".delete(find_value.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("22\n")
    allow_any_instance_of(Kernel).to receive(:rand).and_return(22)
    
    response = /22 is under the key: e/i

    # expect { require_relative("../../find_value") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../find_value')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter an integer to find:\\n22 is under the key: e', but was #{output}."
  end
end

describe "find_value.rb" do
  
  it "prints Hash of '32 is under the key: e.', when input is '32'", points: 1 do
    # Un-require find_value.rb
    find_value = $".select{|r| r.include? 'find_value.rb'}
    $".delete(find_value.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("32\n")
    allow_any_instance_of(Kernel).to receive(:rand).and_return(32)
    
    response = /32 is under the key: e/i

    # expect { require_relative("../../find_value") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../find_value')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter an integer to find:\\n32 is under the key: e', but was #{output}."
  end
end


describe "dig.rb" do
  
  it "prints '80' by retriving the value from the Hash", points: 1 do
    dig_file = "dig.rb"
    file_contents = File.read(dig_file)
    File.foreach(dig_file).with_index do |line, line_num|
      if (line.match(/\s*p.{0,2}80/i) || line.match(/\s*puts.{0,2}80/i))

        expect(line).to_not match(/\s*p.{0,2}80/),
          "Expected 'dig.rb' to NOT literally print '80', but did anyway."
        expect(line).to_not match(/\s*puts.{0,2}80/),
          "Expected 'dig.rb' to NOT literally print '80', but did anyway."
      end
    end

    # Un-require dig.rb
    dig = $".select{|r| r.include? 'dig.rb'}
    $".delete(dig.first)
    
    response = /80/

    # expect { require_relative("../../dig") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../dig')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be '80', but was #{output}."

  end
end

describe "list.rb" do
  
  it "prints 'James', 'Yolanda', 'Red', and  'Fatimah' using variables, loops, if statements, and Hash methods'", points: 1 do
    list_file = "list.rb"
    file_contents = File.read(list_file)
    File.foreach(list_file).with_index do |line, line_num|
      if !line.include?(":name") && (line.match(/\s*p.{0,2}(james|yolanda|red|fatimah)/i) || line.match(/\s*puts.{0,2}(james|yolanda|red|fatimah)/i))

        expect(line).to_not match(/James/i),
          "Expected 'list.rb' to NOT literally print 'James', but did anyway."
        expect(line).to_not match(/Yolanda/i),
          "Expected 'list.rb' to NOT literally print 'Yolanda', but did anyway."
        expect(line).to_not match(/Red/i),
          "Expected 'list.rb' to NOT literally print 'Red', but did anyway."
        expect(line).to_not match(/Fatimah/i),
          "Expected 'list.rb' to NOT literally print 'Fatimah', but did anyway."
      end
    end

    # Un-require list.rb
    list = $".select{|r| r.include? 'list.rb'}
    $".delete(list.first)
    
    response = /.?James.?\n.?Yolanda.?\n.?Red.?\n.?Fatimah.?\n/i

    # expect { require_relative("../../list") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../list')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'James\nYolanda\nRed\nFatimah\n', but was #{output}."

  end
end

def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
