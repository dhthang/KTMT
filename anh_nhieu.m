ig=rgb2gray(imread('C:\Users\dhtha\OneDrive\Pictures\Saved Pictures\anh_nhieu.jpg'));
s=size(ig);
for i=2:s(1)-1
    for j=2:s(2)-1
      a=[ig(i,j) ig(i,j-1) ig(i,j+1) ig(i-1,j) ig(i-1,j-1) ig(i-1,j+1)];
      a=sort([a ig(i+1,j) ig(i+1,j-1) ig(i+1,j+1)]);
      ikq(i,j)=uint8(a(5));
    end;
end;
imshow(ans);