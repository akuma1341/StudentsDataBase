CREATE TABLE `students`.`students`
(
    `id_student` INT         NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50) NULL,
    `last_name`  VARCHAR(50) NULL,
    `birth_date` DATE        NULL,
    PRIMARY KEY (`id_student`),
    UNIQUE INDEX `id_student_UNIQUE` (`id_student` ASC) VISIBLE
);

CREATE TABLE `students`.`subjects`
(
    `id_subject` INT         NOT NULL AUTO_INCREMENT,
    `name`       VARCHAR(45) NULL,
    PRIMARY KEY (`id_subject`),
    UNIQUE INDEX `id_subject_UNIQUE` (`id_subject` ASC) VISIBLE
);

CREATE TABLE `students`.`exam_marks`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `id_student` INT NULL,
    `id_subject` INT NULL,
    `mark`       INT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX `id_student_idx` (`id_student` ASC) VISIBLE,
    INDEX `id_subject_idx` (`id_subject` ASC) VISIBLE,
    CONSTRAINT `id_student`
        FOREIGN KEY (`id_student`)
            REFERENCES `students`.`students` (`id_student`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    CONSTRAINT `id_subject`
        FOREIGN KEY (`id_subject`)
            REFERENCES `students`.`subjects` (`id_subject`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);