
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <html lang="en">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>User Details</title>

    </head>
    
    <body>
        <div class="container">
            <div class="card bg-light">
                <div class ="card-body mx-auto">
                    <h2 class="card-title mt-3 text-center">User Information</h2>
                    <p class="text-center">Please start fill-up the form Step by step..!!</p>
                                
                                <div class="col">
                                    <form action="#" method="post">
                                        
                                        <!--Code for Name-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                            </div>
                                            <input type="text" name="name"  id="name" class="form-control" aria-label="Name"  placeholder="Enter Name" aria-describedby="addon-wrapping" required>
                                            <div class="invalid-feedback">Name required </div>
                                        </div><br>
                                        
                                        <!--Code for Email-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="addon-wrapping"><i class="fa fa-envelope"></i> </span>
                                            </div>
                                            <input type="text" name="email" id="email" class="form-control" aria-label="email"  placeholder="Enter Email" aria-describedby="addon-wrapping" required>
                                            <div class="invalid-feedback">Email required </div>
                                        </div><br>
                                        
                                        <!--Code for Phone Number-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-phone"></i> </span>
                                            </div>
                                            <input type="text" name="phone" id="phone" class="form-control" aria-label="phone" placeholder="Enter Phone" aria-describedby="addon-wrapping" required>
                                            <div class="invalid-feedback">Phone number required </div>
                                        </div><br>
                                        
                                        <!--Code for Alternate Phone Number-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-mobile"></i> </span>
                                            </div>
                                            <input type="text" name="phone" id="phone" class="form-control" aria-label="phone" placeholder="Alternate Phone" aria-describedby="addon-wrapping" required>
                                            <div class="invalid-feedback">Phone number required </div>
                                        </div><br>
                                        
                                        <!--Code for Date Of Birth-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-calendar"></i> </span>
                                            </div>
                                            <input type="date" name="dob" class="form-control" aria-describedby="addon-wrapping" required="" />
                                            <div class="invalid-feedback">Date of birth required </div>
                                        </div><br>
                                        
                                        <!--Code for Gender-->

                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">Gender : </span>
                                            </div>
                                            <div style="margin-left:50px;">
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" name="gen" type="radio" id="male" value="Male"/>
                                                        <label class="form-check-label">Male</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" name="gen" type="radio" id="female" value="Female"/>
                                                        <label class="form-check-label">Female</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                     <input class="form-check-input" name="gen" type="radio" id="trans" value="Transgender"/>
                                                        <label class="form-check-label">Transgender</label>
                                                </div>
                                            </div>
                                        </div><br>
                                        
                                        <!--Code for Address-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-home"></i> </span>
                                            </div>
                                            <textarea name="address" id="address" class="form-control" placeholder="Enter Address" aria-describedby="addon-wrapping" required></textarea>
                                            <div class="invalid-feedback">Address required </div>
                                        </div><br>
                                        
                                        <!--Code for Address-->
                                        
                                        <div class="input-group flex-nowrap">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-home"></i> </span>
                                            </div>
                                            <textarea name="address" id="address" class="form-control" placeholder="Enter Address2" aria-describedby="addon-wrapping" required></textarea>
                                            <div class="invalid-feedback">Address2 required </div>
                                        </div><br>
                                        
                                        <!--Code for Country-->
                                        
                                        <div class="row">
                                            <div class="col-md-5 mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Country : </span>
                                                </div>
                                                <select class="wide w-100" id="country">
                                                    <option value="Choose..." data-display="Select">Choose Country...</option>
                                                    <option value="United States">United States</option>
                                                </select>
                                                <div class="invalid-feedback">Country required </div>
                                            </div>
                                            
                                            <!--Code for State-->
                                            
                                            <div class="col-md-4 mb-3">
                                                <div class="input-group-prepend">
                                                <span class="input-group-text">State : </span>
                                                </div>
                                                <select class="wide w-100" id="state">
                                                    <option data-display="Select">Choose State...</option>
                                                    <option>West Bengal</option>
						</select>
                                                <div class="invalid-feedback">State required </div>
                                            </div>
                                            
                                            <!--Code for Postal Code-->
                                            
                                            <div class="col-md-3 mb-3">
                                                <div class="input-group-prepend">
                                                <span class="input-group-text">Postal Code :</span>
                                                </div>
                                                <input type="text" name="pin" id="pin" class="form-control" aria-label="pin" placeholder="Your Answer" aria-describedby="addon-wrapping" required>
                                                <div class="invalid-feedback">Postal code required </div>
                                            </div>
                                        </div>
                                        
                                        <!--Code for Image-->
                                        
                                        <div>
                                            <img src="" width="350" height="350" class="image" alt="Responsive image">
                                            <button class="middle btn btn-primary" data-toggle="modal" data-target="#exampleModal">Upload Image</button>
                                        </div><br>
                                        
                                        <!--Code for Payment-->
                                        
                                        <hr class="mb-4">
                                        <div class="title"> <h2>Payment Method...</h2> </div><br>
                                        <div class="d-block my-3">
                                            <div class="custom-control custom-radio">
                                                <input id="upi" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                                <label class="custom-control-label" for="upi">UPI</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                                <label class="custom-control-label" for="credit">Credit card</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                                <label class="custom-control-label" for="debit">Debit card</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label for="cc-name">Name on card</label>
                                                <input type="text" class="form-control" id="cc-name" placeholder="" required> <small class="text-muted">Full name as displayed on card</small>
                                                <div class="invalid-feedback"> Name on card is required </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="cc-number">Card number</label>
                                                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                                <div class="invalid-feedback"> Card number is required </div>                                                   
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 mb-3">
                                                <label for="cc-expiration">Expiration</label>
                                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                                <div class="invalid-feedback"> Expiration date required </div>
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label for="cc-expiration">CVV</label>
                                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                                <div class="invalid-feedback"> Security code required </div>
                                            </div>
                                            <!--<div class="col-md-6 mb-3">
                                                <div class="payment-icon">
                                                    <ul>
                                                        <li><img class="img-fluid" src="images\image.jpg" alt=""></li>
                                                        <li><img class="img-fluid" src="images\paytm.jpg" alt=""></li>
                                                        <li><img class="img-fluid" src="images\rupay.jpg" alt=""></li>
                                                    </ul>
                                                </div>
                                            </div>-->
                                        </div>
                                        
                                        <!--Code for Check Box-->
                                        
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="same-address" required>
                                            <label class="custom-control-label" for="same-address">Accept terms & conditions....</label>
                                        </div><br>
                                        
                                        <!--Code for Submit Button-->
                                        
                                        <button class="btn btn-success btn-lg btn-block" type="submit" value="Register" id="submit">Submit</button>&ensp;&ensp;
                                        <a href="#">Back to Home</a>
                                        <br>
                                    </form><br>
                                </div>
                </div>
            </div>
        </div>
    </body>
</html>

