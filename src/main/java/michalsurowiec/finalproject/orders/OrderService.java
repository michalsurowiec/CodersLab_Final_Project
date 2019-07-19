package michalsurowiec.finalproject.orders;

import michalsurowiec.finalproject.products.Product;
import michalsurowiec.finalproject.users.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
@Transactional
public class OrderService {

    private OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Order addProductToOrder(Product product, User user, HttpSession session){
        Order order = new Order();
        if(session.getAttribute("order") == null){
            order.setUser(user);
        } else {
            order = (Order) session.getAttribute("order");
        }
        boolean result = false;
        for(Product productEach : order.getProductSet()){
            if(productEach.getId().equals(product.getId())){
                result = true;
            }
        }
        if (result){
            return order;
        } else {
            order.getProductSet().add(product);
            return order;
        }
    }

    public void saveProduct(Order order){
        orderRepository.save(order);
    }

    public List<Order> findAllOrders(){
        return orderRepository.findAll();
    }
}
