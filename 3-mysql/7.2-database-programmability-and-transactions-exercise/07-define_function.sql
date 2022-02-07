DELIMITER $$

CREATE FUNCTION `ufn_is_word_comprised`(`set_of_letters` VARCHAR(50), `word` VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN IF(`word` REGEXP CONCAT('[^', `set_of_letters`, ']'), 0, 1);
END$$

DELIMITER ;

SELECT `ufn_is_word_comprised`('oistmiahf', 'halves');