require "read_time"
text1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada ligula vitae dui interdum, pulvinar ornare magna ultrices. Nullam sodales risus nibh, volutpat lacinia eros imperdiet ac. Sed suscipit mi ex, eu pretium diam pulvinar ac. Aliquam ac dapibus nunc, at porta erat. Curabitur tortor ipsum, luctus tincidunt lobortis quis, tempus at ante. Vestibulum tincidunt consequat interdum. Mauris eget elementum urna. Sed porta, lacus id efficitur sagittis, orci eros finibus lacus, sit amet convallis urna dolor a dui. Proin auctor sagittis nunc non luctus. Nam consectetur interdum libero, in placerat est aliquet nec. Pellentesque et hendrerit mi. Duis imperdiet ipsum tortor, eu viverra nisi tincidunt vel. Nulla dui nulla, porta at scelerisque sed, maximus at sem. Quisque nisl dolor, accumsan eget fermentum nec, sollicitudin quis urna.

Integer accumsan quam in neque maximus porta. Quisque dignissim laoreet lorem, eu pellentesque risus convallis sit amet. Etiam odio neque, faucibus ut sollicitudin vitae, tincidunt ac nulla. Quisque feugiat venenatis nulla ut sagittis. Sed ut posuere massa. Fusce semper in tortor sit amet porttitor. Proin congue tempus diam, in pretium lorem lobortis eleifend. Nullam rutrum purus ac interdum varius. Mauris id laoreet augue. Sed luctus ligula ac mi porta, eu mollis magna semper. Vestibulum."

text2 ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec diam semper, pulvinar nisi eu, vehicula mauris. Donec eu ex convallis, volutpat lacus vitae, aliquet dui. In commodo nulla quis sollicitudin congue. Aliquam maximus augue nec quam bibendum fermentum. Ut tincidunt feugiat enim vel imperdiet. Donec in nisl mollis, molestie velit ut, molestie tortor. Mauris congue eros vel convallis pharetra. Morbi ac ex nunc. Ut et massa feugiat eros cursus suscipit. Nulla non mattis nulla.

Nunc vehicula blandit ligula quis varius. Aliquam purus eros, ultricies a eros et, pretium congue dolor. Nam tincidunt consequat odio, nec commodo mauris convallis commodo. Integer ac sollicitudin purus, vel luctus urna. Phasellus vehicula libero eu libero commodo dignissim. Nunc varius non massa a laoreet. Sed vel tellus sit amet justo vulputate faucibus et nec lorem. Nulla sapien ligula, volutpat quis vehicula id, consectetur quis nibh.

Fusce nec congue ante. Nam quam sem, sagittis eget magna vel, ultricies porta ex. Etiam porta nulla sit amet pretium congue. In accumsan metus eu erat tempor vestibulum. Maecenas pulvinar ultricies imperdiet. Vivamus augue ipsum, venenatis id ornare sit amet, porta vel massa. Nam finibus nibh nec dui efficitur, sit amet consequat velit porta. Curabitur ante lectus, lobortis in accumsan sit amet, lobortis placerat ex. Vivamus laoreet in libero in venenatis.

Phasellus sollicitudin semper aliquam. Nunc fringilla lorem et leo efficitur, sit amet efficitur lectus mattis. Quisque id tincidunt elit. Phasellus at justo ac sapien tincidunt dictum eget vel metus. Integer at nulla tempus, euismod eros non, gravida augue. Morbi pretium risus metus, consequat eleifend ligula porta quis. Proin lectus massa, ornare vitae lacus non, dictum luctus massa. Mauris non pharetra risus, euismod fermentum tortor. Proin facilisis libero eu eros finibus consequat. Ut sed augue ligula. Curabitur vel faucibus risus, euismod tristique nunc. Sed vestibulum tempus consectetur.

Quisque diam tellus, rhoncus eu erat sed, rutrum consectetur metus. Nam luctus dolor ut nibh egestas vestibulum. Sed efficitur lacus metus, sit amet molestie nibh elementum non. Praesent bibendum vehicula risus, in viverra tortor tristique eget. Proin vestibulum gravida leo vel convallis. Nunc in volutpat mi. Vestibulum ipsum sapien, faucibus nec ex sed, aliquam blandit tortor. Sed quis ullamcorper elit. Vivamus laoreet mi sapien, condimentum ullamcorper tortor sodales ultrices. Curabitur lacinia ipsum urna, at fermentum diam facilisis quis. Cras eleifend sed urna nec fringilla. Duis tincidunt sem ut nibh pellentesque, sit amet euismod orci pretium. Aenean lacinia varius nulla quis elementum. Suspendisse potenti. Phasellus condimentum venenatis aliquam. Ut varius fringilla venenatis.

Donec semper ultricies risus, quis pretium dolor bibendum eu. Curabitur ut aliquam dui. Vestibulum sed suscipit augue, id varius mi. In hac habitasse platea dictumst. Sed fringilla dolor feugiat lacus pulvinar vehicula. Praesent non mattis felis. Morbi turpis dui, tempor ut tincidunt vitae, lacinia vel tortor. Vestibulum sollicitudin vulputate faucibus. Pellentesque id imperdiet ipsum. Aliquam congue leo eget venenatis commodo. Suspendisse iaculis purus vitae augue fermentum pulvinar. Etiam faucibus ex in viverra imperdiet. Praesent posuere ac metus nec vehicula. Proin in vulputate nisi. Fusce bibendum pharetra mi placerat sollicitudin. Praesent turpis."

RSpec.describe "read time method" do
    it "text with fewer than 200 words and returns less than 1 minute or 0" do
        result = read_time("Hello world")
        expect(result).to eq (0)
    end

    it "text with 200 words" do
        result = read_time(text1)
        expect(result).to eq (1)
    end

    it " text with 500 words" do
        result = read_time(text2)
        expect(result).to eq (3)
    end

end


