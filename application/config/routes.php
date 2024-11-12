<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = 'home/notfound';
$route['translate_uri_dashes'] = FALSE;
$route['404'] = 'home/notfound';
$route['subscribe-email'] = 'home/subscribe_email';
$route['unsubscribe-email'] = 'home/unsubscribe_email';
$route['login/admin'] = 'home/login';
$route['snap'] = 'snap';
$route['transaction'] = 'transaction';
$route['notification'] = 'notification';
$route['c/(:any)'] = 'categories/index/$1';
$route['promo'] = 'promo/index';
$route['news'] = 'page/news';
$route['p/(:any)'] = 'products/detail_product/$1';
$route['products'] = 'products/index';
$route['package/(:any)'] = 'page/package/$1';
$route['testimoni'] = 'testimoni/index';
$route['cart'] = 'cart/index';
$route['search'] = 'page/search';
$route['payment'] = 'payment/index';
$route['administrator'] = 'administrator/index';
$route['administrator/order/(:num)'] = 'administrator/detail_order/$1';
$route['administrator/order/(:num)/process'] = 'administrator/process_order/$1';
$route['administrator/order/(:num)/sending'] = 'administrator/sending_order/$1';
$route['administrator/order/(:num)/delete'] = 'administrator/delete_order/$1';
$route['administrator/product/add'] = 'administrator/add_product';
$route['administrator/product/add-img/(:num)'] = 'administrator/add_img_product/$1';
$route['administrator/product/(:num)/edit'] = 'administrator/edit_product/$1';
$route['administrator/package/add'] = 'administrator/add_package';
$route['administrator/package/(:num)'] = 'administrator/show_package/$1';
$route['administrator/news/add'] = 'administrator/add_news';
$route['administrator/email/send'] = 'administrator/send_mail';
$route['administrator/email/(:num)'] = 'administrator/detail_email/$1';
$route['administrator/page/add'] = 'administrator/add_page';
$route['administrator/page/(:num)/edit'] = 'administrator/edit_page/$1';
$route['administrator/setting/general'] = 'administrator/general_setting';
$route['administrator/setting/banner'] = 'administrator/banner_setting';
$route['administrator/setting/banner/add'] = 'administrator/add_banner_setting';
$route['administrator/setting/description'] = 'administrator/description_setting';
$route['administrator/setting/rekening'] = 'administrator/rekening_setting';
$route['administrator/setting/rekening/add'] = 'administrator/add_rekening_setting';
$route['administrator/setting/rekening/(:num)'] = 'administrator/edit_rekening_setting/$1';
$route['administrator/setting/sosmed'] = 'administrator/sosmed_setting';
$route['administrator/setting/sosmed/add'] = 'administrator/add_sosmed_setting';
$route['administrator/setting/sosmed/(:num)'] = 'administrator/edit_sosmed_setting/$1';
$route['administrator/setting/ongkir'] = 'administrator/ongkir_setting';
$route['administrator/setting/ongkir/status'] = 'administrator/status_ongkir_setting';
$route['administrator/setting/address'] = 'administrator/address_setting';
$route['administrator/setting/delivery'] = 'administrator/delivery_setting';
$route['administrator/setting/delivery/add'] = 'administrator/add_delivery_setting';
$route['administrator/setting/delivery/(:num)'] = 'administrator/edit_delivery_setting/$1';
$route['administrator/setting/cod'] = 'administrator/cod_setting';
$route['administrator/setting/cod/add'] = 'administrator/add_cod_setting';
$route['administrator/setting/footer'] = 'administrator/footer_setting';
$route['(:any)'] = 'page/index/$1';