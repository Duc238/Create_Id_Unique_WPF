   M S B A M L   `   `   `  ����K  GCreate_Id_Unique, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Create_Id_UniqueCreate_Id_Unique  5   	   G(clr-namespace:Create_Id_Unique.ViewModelCreate_Id_Unique.ViewModel  5   	   !    Create_Id_Unique.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Create_Id_Unique     5   	   >	ViewModel(clr-namespace:Create_Id_Unique.ViewModel     5   	   -   5          �Name$  Window��5	   	    � Title$ 
MainWindow��5
   	   $	��450��6   $	��800��6)    � DataContext 5      .   (Create_Id_Unique.ViewModel.MainViewModel  5   
   6$   .��5      �� .+�5   
   �� $��Tên sản phẩm��6   6*   �� 5   
   ��6   �� *ProductName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6c   �� 5   
   $
��Giá��6   6!   �� 5   
   ��6   �� *Price+$ PropertyChanged=�$ TwoWay=�6]   �� 5   
   ��6   �� *
Products+$ PropertyChanged=�$ TwoWay=� �� View 5      �� 5      .P�5      �� $��Id��6%    �� DisplayMemberBinding 61   �� *Id+�� 5      $
��Name��6%    63   �� *ProductName+�� 5      $��Price��6%    64   �� *Price+5      5      �� 5   
   $��Thêm sản phẩm��6    �� 	IsDefault . ��6:   �� *AddNewProductCommand+6e   �� 5   
   $��Thoát��6    �� IsCancel . ��61   �� *ExitCommand+��6Q   �� 	 �� ElementName$	 Window��6�   5      5      