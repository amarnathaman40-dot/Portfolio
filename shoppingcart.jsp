<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Shopping Cart Simulator</title>

<style>
body{
    font-family: Arial, sans-serif;
    background:#f4f6f9;
    margin:0;
    padding:20px;
}

h1{
    text-align:center;
}

.container{
    display:flex;
    gap:20px;
    justify-content:center;
}

.products, .cart{
    width:45%;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
}

.product{
    display:flex;
    justify-content:space-between;
    margin-bottom:15px;
    padding:10px;
    border-bottom:1px solid #eee;
}

button{
    background:#3498db;
    border:none;
    color:white;
    padding:6px 12px;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#2980b9;
}

.cart-item{
    display:flex;
    justify-content:space-between;
    margin-bottom:10px;
}

.total{
    font-weight:bold;
    margin-top:15px;
}
</style>
</head>

<body>

<h1>Shopping Cart Simulator</h1>

<div class="container">

<div class="products">
<h2>Products</h2>

<div class="product">
<span>Apple - $2</span>
<button onclick="addToCart('Apple',2)">Add</button>
</div>

<div class="product">
<span>Banana - $1</span>
<button onclick="addToCart('Banana',1)">Add</button>
</div>

<div class="product">
<span>Orange - $3</span>
<button onclick="addToCart('Orange',3)">Add</button>
</div>

</div>

<div class="cart">
<h2>Cart</h2>
<div id="cartItems"></div>
<div class="total">Total: $<span id="total">0</span></div>
</div>

</div>

<script>

let cart = {};

function addToCart(name, price){
    if(cart[name]){
        cart[name].qty++;
    } else {
        cart[name] = {price:price, qty:1};
    }
    renderCart();
}

function removeItem(name){
    delete cart[name];
    renderCart();
}

function changeQty(name, delta){
    cart[name].qty += delta;
    if(cart[name].qty <=0){
        delete cart[name];
    }
    renderCart();
}

function renderCart(){
    const cartDiv = document.getElementById("cartItems");
    const totalSpan = document.getElementById("total");

    cartDiv.innerHTML = "";
    let total = 0;

    for(let item in cart){
        let obj = cart[item];
        total += obj.price * obj.qty;

        cartDiv.innerHTML += `
        <div class="cart-item">
            <span>${item} ($${obj.price})</span>
            <span>
                <button onclick="changeQty('${item}',-1)">-</button>
                ${obj.qty}
                <button onclick="changeQty('${item}',1)">+</button>
                <button onclick="removeItem('${item}')">x</button>
            </span>
        </div>
        `;
    }

    totalSpan.innerText = total;
}

</script>

</body>
</html>