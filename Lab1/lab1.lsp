(setq
	list1 '((PI) V (H J K))
	list2 '(R YU (H KJ KL))
	list3 '(U II OO LL PP (3 4 5))
)


;; Task 1
(write "Task 1: ")
((lambda (l1 l2 l3)
   (setq 
		h1 (CAR l1)
		h2 (CAR l2)
		h3 (CAR l3)
	)
	(set 'result (list h1 h2 h3))

	(write result)
	(terpri))
   list1 list2 list3
)

;; Task 2
(defun task2(l1 l2 l3)

	(setq 
		el1 (NTH 1 l1)
		el2 (NTH 3 l2)
		el3 (NTH 6 l3)
	)

	(set 'result (list el1 el2 el3))

	(write result)
	(terpri)
)
(write "Task 2: ")
(task2 list1 list2 list3)

;; Task 3
(defun task3(n1 n2 n3 n4 n5)
	(setq l_original (LIST n1 n2 n3 n4 n5))

	(terpri)
	(write l_original)
	(terpri)
	
	(setq 
		minVal (FIRST l_original)
		maxVal (FIRST l_original)
	)

	(loop for x in l_original
   		if (< (ABS x) (ABS minVal))
		   do (setq minVal x)		 
	
		if (> (ABS x) (ABS maxVal))
		   do (setq maxVal x)
	)

	(write minVal)
	(terpri)

	(write maxVal)
	(terpri)

	(if (and (typep  minVal 'integer) (typep maxVal'integer))
		(setq listResult (LIST minVal maxVal))
		(setq listResult (/ (+ minVal maxVal) 2))
	)

	(write listResult)
	(terpri)
)
(write "Task 3:")
(task3 -122 -2.5 -344 46 5)
(task3 -122 -5 -344 46 5)