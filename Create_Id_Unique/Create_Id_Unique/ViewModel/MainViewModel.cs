using Create_Id_Unique.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Create_Id_Unique.ViewModel
{
    public class MainViewModel:BaseViewModel
    {
        private ObservableCollection<Product> _Products;
        public ObservableCollection<Product> Products { get=> _Products; set { _Products = value;OnPropertyChanged(); } }
        private string _ProductName;
        public string ProductName { get=> _ProductName; set { _ProductName = value;OnPropertyChanged(); } }
        private decimal _Price;
        public decimal Price { get=>_Price; set { _Price = value;OnPropertyChanged(); } }
        public ICommand AddNewProductCommand { get; set; }
        public ICommand ExitCommand { get; set; }
        public MainViewModel()
        {
            Products = new ObservableCollection<Product>(DataProvider.Instance.Data.Products);
            AddNewProductCommand = new RelayCommand<object>((p => true), (p) => AddNewProduct());
            ExitCommand = new RelayCommand<Window>((p) => true, (p) => { p.Close(); Environment.Exit(0); });
        }
        private string GenerateUniqueId()
        {
            string newId;
            bool exists;
            do
            {
                // Sinh Id ngẫu nhiên (có thể tùy chỉnh theo ý bạn)
                newId = "PRD" + Guid.NewGuid().ToString("N").Substring(0, 16).ToUpper();

                // Kiểm tra Id có tồn tại trong database hay không
                exists = DataProvider.Instance.Data.Products.Any(p => p.Id == newId);
            } while (exists);

            return newId;
        }
        public void AddNewProduct()
        {
            // Tạo Id mới không trùng
            string newId = GenerateUniqueId();

            // Tạo sản phẩm mới
            var newProduct = new Product
            {
                Id = newId,
                ProductName = ProductName,
                Price = Price
            };
            DataProvider.Instance.Data.Products.Add(newProduct);
            DataProvider.Instance.Data.SaveChanges();
            Products.Add(newProduct);
            ProductName = "";
            Price = 0;
        }

    }
}
