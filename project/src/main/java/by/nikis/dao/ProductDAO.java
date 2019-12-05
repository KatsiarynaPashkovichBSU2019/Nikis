package by.nikis.dao;

public interface ProductDAO {
    /*select product_id, goods.title as title, types.title as type, size, elongated_handle,
            (select group_concat(title separator ', ') as color from goods_colors inner join colors on colors.color_id = goods_colors.color_id where goods_colors.product_id = goods.product_id) as color,
    (select group_concat(title separator ', ') from goods_materials inner join materials on materials.material_id = goods_materials.material_id where goods_materials.product_id = goods.product_id) as material,
    (select group_concat(title separator ', ') from goods_knives inner join knives on knives.knife_id = goods_knives.knive_id where goods_knives.product_id = goods.product_id) as knife
    from goods
    inner join types on types.type_id = goods.type_id*/
    //Set<Product> getAllProduct();

    /*select product_id, goods.title as title, types.title as type, size, elongated_handle,
            (select group_concat(title separator ', ') as color from goods_colors inner join colors on colors.color_id = goods_colors.color_id where goods_colors.product_id = goods.product_id) as color,
    (select group_concat(title separator ', ') from goods_materials inner join materials on materials.material_id = goods_materials.material_id where goods_materials.product_id = goods.product_id) as material,
    (select group_concat(title separator ', ') from goods_knives inner join knives on knives.knife_id = goods_knives.knive_id where goods_knives.product_id = goods.product_id) as knife
    from goods
    inner join types on types.type_id = goods.type_id
    where goods.product_id = ?*/
    //Product getProductById(int id);

    //void addProduct(Product product);

    //void editProduct(Product product);

    //void deleteProductById(int id);
    //delete from goods_materials where product_id = ?
    //delete from goods_colors where product_id = ?
    //delete from goods_knives where product_id = ?
    //delete from goods where product_id = ?
}
