package michalsurowiec.finalproject.orders;

import michalsurowiec.finalproject.products.Product;
import michalsurowiec.finalproject.users.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

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
        order.getProductSet().add(product);
        return order;
    }
}
