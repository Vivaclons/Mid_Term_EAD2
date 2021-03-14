package model;

import java.util.ArrayList;
import java.util.List;

public class UserDataBase {
    private final List<User> store = new ArrayList<>();

    public boolean add(final User user) {

        for (User u : store) {
            if (u.getName().equals(user.getName()) && u.getPassword().equals(user.getPassword())) {
                return false;
            }
        }

        return store.add(user);
    }

}
