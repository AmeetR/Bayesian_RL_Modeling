files=dir('*.mat');
animalname=cell(1,length(files));
for i=1:length(files)
    name=str_sep(files(i).name,'_');
    for j=2:length(name)
        if j==2 && ~isempty(str2num(name{j}))
            animalname{i}=[name{1}]
        elseif ~isempty(str2num(name{j}))
            animalname{i}=[name{1} '_' name{2:j-1}]
        end
    end
end
unique(animalname)'
