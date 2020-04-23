import React from "react";
import ThumbnailViewer from "./ThumbnailViewer";
import ProductInfo from "./ProductInfo";
import prodMockData from "../../assets/prodMockdata";

const Product = () => {
	const { thumb_images, ...info } = prodMockData.data;
	return (
		<>
			<ThumbnailViewer thumbnails={thumb_images} />
			<ProductInfo {...info} />
		</>
	);
};

export default Product;
