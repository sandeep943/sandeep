package com.niit.sport.service;

import com.niit.sport.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
