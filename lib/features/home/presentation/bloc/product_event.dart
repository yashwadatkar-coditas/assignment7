sealed class ProductEvent {}
class ProductInitialEvent extends ProductEvent{}

class ProductCategoryButtonClickedEvent extends ProductEvent{
   List<String> categoryList = ["electronics","jewelery","men's clothing","women's clothing"];

  
}