import React from "react";
import PropTypes from "prop-types";
import { Container, Text } from "style/state/message";

const Message = ({ text, color }) => (
	<Container>
		<Text color={color}>{text}</Text>
	</Container>
);

Message.propTypes = {
	text: PropTypes.string.isRequired,
	color: PropTypes.string.isRequired,
};

export default Message;
