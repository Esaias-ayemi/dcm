import Debug "mo:base/Debug";
import Text "mo:base/Text";

actor {
  type UserDatabase = [Users];

  type Users = {
    FisrtName : Text;
    LastName : Text;
    Email : Text;
    Password : Text;

  };

  public query func _say(phrase : Text) : async Text {
    return phrase;
  };
  
  public query func _registeruser(users:UserDatabase) : async UserDatabase {
    return users;
  };
    public func collectUserInfo() : async Text {
        Debug.print("Enter First Name:");
        let _firstName = await input();

        Debug.print("Enter Last Name:");
        let _lastName = await input();

        Debug.print("Enter Email:");
        let _email = await input();

        Debug.print("Create Password:");
        let password = await input();

        Debug.print("Confirm Password:");
        let confirmPassword = await input();

        if (password != confirmPassword) {
            return "Password mismatch error";
        } else {
            return "User information collected successfully";
        }
    };

    public func input() : async Text {
        // This is just a sample of how we are going to Implement our login mechanism. This is a rushup work and perfection will be soon
        return "user_input";
    };
};