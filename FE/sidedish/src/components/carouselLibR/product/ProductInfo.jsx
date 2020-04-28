import React, { useEffect, useReducer } from "react";
import PropTypes from "prop-types";
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
} from "style/product/ProductInfo";

let _sellingPriceInNumber;

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

const reducer = (state, action) => {
	switch (action.type) {
		case "INCREMENT":
			return {
				...state,
				count: state.count + 1,
				totalAmount: addCommas(convertStrToNum(state.totalAmount) + _sellingPriceInNumber),
			};
		case "DECREMENT":
			return {
				...state,
				count: state.count - 1,
				totalAmount: addCommas(convertStrToNum(state.totalAmount) - _sellingPriceInNumber),
			};
		default:
			return state;
	}
};

const ProductInfo = ({
	title,
	product_description,
	point,
	delivery_info,
	delivery_fee,
	prices: [originalPrice, sellingPrice],
}) => {
	const [state, dispatch] = useReducer(reducer, {
		count: 1,
		totalAmount: sellingPrice.slice(0, -1),
	});

	const { count, totalAmount } = state;

	useEffect(() => {
		_sellingPriceInNumber = convertStrToNum(sellingPrice);
	}, []);

	const handleDecrementBtn = () => {
		if (count === 1) return;
		dispatch({ type: "DECREMENT" });
	};

	const handleIncrementBtn = () => {
		if (count === 30) {
			alert("한번에 최대 30개까지 구매하실 수 있습니다.");
			return;
		}
		dispatch({ type: "INCREMENT" });
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
						<CountBtn onClick={handleDecrementBtn}>-</CountBtn>
						<Count>{count}</Count>
						<CountBtn onClick={handleIncrementBtn}>+</CountBtn>
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

ProductInfo.propTypes = {
	title: PropTypes.string.isRequired,
	product_description: PropTypes.string.isRequired,
	point: PropTypes.string.isRequired,
	delivery_info: PropTypes.string.isRequired,
	delivery_fee: PropTypes.string.isRequired,
	prices: PropTypes.arrayOf(PropTypes.string).isRequired,
};

export default ProductInfo;
