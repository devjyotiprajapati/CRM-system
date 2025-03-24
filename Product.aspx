<%@ Page Title="" Language="C#" MasterPageFile="~/AfterloginMasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="CRM_Final_Project.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="JavaScript.js" defer></script>
    <style type="text/css">
        * {
            font-family: 'Nunito',sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            border: none;
            text-decoration: none;
            transition: all .2s linear;
            text-transform: capitalize;
        }

        #Content2 {
            background: #eee;
            overflow-x: hidden;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

            .container .title {
                font-size: 3.5rem;
                color: #444;
                margin-bottom: 3rem;
                text-transform: uppercase;
                text-align: center;
            }

            .container .Product-container {
                display: grid;
                grid-template-columns: repeat(auto-fit,minmax( 30rem,1fr ));
                gap: 2rem;
            }

                .container .Product-container .product {
                    text-align: center;
                    padding: 2rem 2rem;
                    background: #ffffff;
                    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
                    outline: .1rem solid #ccc;
                    outline-offset: -1.5rem;
                    cursor: pointer;
                }

                    .container .Product-container .product:hover {
                        outline: .2rem solid #222;
                        outline-offset: 0;
                    }

                    .container .Product-container .product img {
                        height: 200px;
                        width: auto;
                    }

                    .container .Product-container .product:hover img {
                        transform: scale(.9);
                    }

                    .container .Product-container .product h3 {
                        padding: .5rem 0;
                        font-size: 2rem;
                        color: #444;
                    }

                    .container .Product-container .product:hover h3 {
                        color: #27ae60;
                    }

                    .container .Product-container .product .Price {
                        font-size: 2rem;
                        color: #444;
                    }
                    .products-preview{
                        position:absolute;
                        top:0;left:0;
                        min-height:100vh;width:100%;
                        background:rgba(0,0,0,.8);
                        display:flex;
                        align-items:center;
                        justify-content:center;
                    }
                   .products-preview .preview{
                       display:none;
                       padding:30px;
                       text-align:center;height:max-content;
                       background:#fff;position:absolute;
                       margin:.1rem; width:30rem;
                   }
                   .products-preview .preview.active{
                       display:inline-block;
                   }
                   .products-preview .preview img{
                       height:10rem;margin-top:.1rem;
                   }
                   .products-preview .preview .fa-times{
                       position:absolute;
                       top:1rem; right:1rem;
                       cursor: pointer; color:#444;
                       font-size:1rem;
                   }
                   .products-preview .preview .fa-times:hover{
                       transform:rotate(90deg);
                   }
                   .products-preview .preview h3{
                       color:#444;
                       padding:.1rem 0;
                       font-size:1rem;
                   }
                   .products-preview .preview .stars{
                       padding:10px ;
                       font-size:1rem;
                   }
                   .products-preview .preview .stars i{
                       color:#27ae60;
                   }
                    .products-preview .preview .stars span{
                       color:#999;
                   }
                     .products-preview .preview p{
                       line-height:1.5;
                       padding: 5px;
                       font-size:1rem;
                       margin: 0;
                       color:#777;
                   }
                     .products-preview .preview .Price{
                         padding: 5px;font-size:2rem;
                         color:#27ae60;
                     }
                     .products-preview .preview .buttons{
                         display:flex;                         
                         flex-wrap:wrap;
                         margin-top:0rem;
                         justify-content: center;
                     }
                      .products-preview .preview .buttons a{                          
                          padding:5px 20px;
                          font-size:1rem;
                          color:#444;
                          border:.1rem solid #444;
                      }
                      @media(max-width:991px){

                      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="title">CRM</h3>
        <div class="Product-container">
            <div class="product" data-name="p-1">
                <img src="Image/j4.jpg" alt="" />
                <h3>Bangle</h3>
                <div class="Price">50,000</div>
            </div>
            <div class="product" data-name="p-2">
                <img src="Image/nk.jpg" alt="" />
                <h3>Neck less</h3>
                <div class="Price">1,000,00</div>
            </div>
            <div class="product" data-name="p-3">
                <img src="Image/nk1.jpg" alt="" />
                <h3>Nose Pin</h3>
                <div class="Price">10,000</div>
            </div>
            <div class="product" data-name="p-4">
                <img src="Image/j1.jpg" alt="" />
                <h3>Ring</h3>
                <div class="Price">30,000</div>
            </div> 
        </div>
    </div>
    <div class="products-preview">
        <div class="preview  active" data-target="p-1">
            <i class="fa fa-times"></i>
            <img src="Image/j4.jpg" alt="" />
            <h3> Bangle</h3>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>
                <span>(250)</span>
            </div>
            <p>We have exclusive offer and no 1 CRM</p>
            <div class="Price">50,000</div>
            <div class="buttons">
                <a href="#" class="buynow">Buy now</a>
            </div>
        </div>

         <div class="preview active" data-target="p-2">
             <i class="fa fa-times"></i>
            <img src="Image/nk.jpg" alt="" />
            <h3>Neck less</h3>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>
                <span>(250)</span>
            </div>
            <p>We have exclusive offer and no 1 CRM</p>
            <div class="Price">50,000</div>
            <div class="buttons">
                <a href="#" class="buynow">Buy now</a>
            </div>
        </div>
         <div class="preview active" data-target="p-3">
             <i class="fa fa-times"></i>
            <img src="Image/nk1.jpg" alt="" />
            <h3>Nose Pin</h3>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>
                <span>(250)</span>
            </div>
            <p>We have exclusive offer and no 1 CRM</p>
            <div class="Price">50,000</div>
            <div class="buttons">
                <a href="#" class="buynow">Buy now</a>
            </div>
        </div>


         <div class="preview active" data-target="p-4">
             <i class="fa fa-times"></i>
            <img src="Image/j1.jpg" alt="" />
            <h3>Ring</h3>
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star"></i>
                <i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>
                <span>(250)</span>
            </div>
            <p>We have exclusive offer and no 1 CRM</p>
            <div class="Price">50,000</div>
            <div class="buttons">
                <a href="#" class="buynow">Buy now</a>
            </div>
        </div>

         
         

    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>
