import { useState } from "react";

export default () => {
	const [modal, setModal] = useState(false);
	const [modalContent, setModalContent] = useState(null);

	const handleModal = (content = false) => {
		setModal(!modal);
		if (content) {
			setModalContent(content);
		}
	};

	return { modal, handleModal, modalContent };
};
