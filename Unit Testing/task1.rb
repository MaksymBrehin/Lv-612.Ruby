
require 'rspec/autorun'
class Volume
 def get_volume_of_cuboid(length, width, height)
   # if height < 0
   #   return ("error")
   # else
    return length * width * height;
   # end
 end
end

a = Volume.new
puts a.get_volume_of_cuboid(10,5,4)

describe Volume do
  volume = Volume.new

     it "right numbers" do
       expect(volume.get_volume_of_cuboid(10,5,4)).to eq(200)
     end

     it "negative numbers" do
       expect(volume.get_volume_of_cuboid(13,5.4,-4)).to eq("error")
     end

     it " 0 " do
       expect(volume.get_volume_of_cuboid(0,5.4,4)).to eq(0)
     end
end
