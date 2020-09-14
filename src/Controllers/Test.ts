import Test from "../Entities/Test";

export const getTests = async () => {
	const tests = await Test.find();

	return tests;
};
