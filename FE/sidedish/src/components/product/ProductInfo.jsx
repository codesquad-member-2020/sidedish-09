import React, { useState, useEffect, useRef } from "react";
import {
	InfoContainer,
	Title,
	SubTitle,
	ContentContainer,
	ContentTerm,
	ContentDescription,
	PriceContainer,
	OriginalPrice,
	SellingPrice,
	Unit,
	CountContainer,
	CountTerm,
	CountBtn,
	Count,
	TotalContainer,
	TotalText,
	TotalAmount,
	TotalUnit,
	CartBtn,
} from "../../style/product/ProductInfo";

const ProductInfo = ({
	title,
	product_description,
	point,
	delivery_info,
	delivery_fee,
	prices: [originalPrice, sellingPrice],
}) => {
	let _sellingPriceInNumber = useRef(null);
	const [count, setCount] = useState(1);
	const [totalAmount, setTotalAmount] = useState(sellingPrice.slice(0, -1));

	useEffect(() => {
		_sellingPriceInNumber.current = convertStrToNum(sellingPrice);
	}, []);

	const handleSubstractBtn = () => {
		if (count === 1) return;
		const newTotalAmount = convertStrToNum(totalAmount) - _sellingPriceInNumber.current;
		setCount(count - 1);
		setTotalAmount(addCommas(newTotalAmount));
	};

	const handleAddBtn = () => {};

	const convertStrToNum = (string) => parseFloat(string.replace(/,/g, "").replace(/^[^-0-9]*/, ""));

	const addCommas = (totalNum) => {
		let totalWithComma = "";
		let totalString = totalNum.toString();
		for (let i = totalString.length; i > 0; i -= 3) {
			i - 3 > 0
				? (totalWithComma = `,${totalString.slice(i - 3, i)}` + totalWithComma)
				: (totalWithComma = `${totalString.slice(0, i)}` + totalWithComma);
		}
		return totalWithComma;
	};

	return (
		<InfoContainer>
			<div>
				<Title>{title}</Title>
				<SubTitle>{product_description}</SubTitle>
			</div>
			<ContentContainer>
				<ContentTerm>적립금</ContentTerm>
				<ContentDescription>{point}</ContentDescription>
				<ContentTerm>배송정보</ContentTerm>
				<ContentDescription>{delivery_info}</ContentDescription>
				<ContentTerm>배송비</ContentTerm>
				<ContentDescription>{delivery_fee}</ContentDescription>
			</ContentContainer>
			<PriceContainer>
				<OriginalPrice>{originalPrice.slice(0, -1)}</OriginalPrice>
				<SellingPrice>
					{sellingPrice.slice(0, -1)}
					<Unit>원</Unit>
				</SellingPrice>
			</PriceContainer>
			<ContentContainer>
				<CountTerm>수량</CountTerm>
				<ContentDescription>
					<CountContainer>
						<CountBtn onClick={handleSubstractBtn}>-</CountBtn>
						<Count>{count}</Count>
						<CountBtn onClick={handleAddBtn}>+</CountBtn>
					</CountContainer>
				</ContentDescription>
			</ContentContainer>
			<TotalContainer>
				<TotalText>총 상품금액</TotalText>
				<TotalAmount>{totalAmount}</TotalAmount>
				<TotalUnit>원</TotalUnit>
			</TotalContainer>
			<CartBtn>담기</CartBtn>
		</InfoContainer>
	);
};

export default ProductInfo;
