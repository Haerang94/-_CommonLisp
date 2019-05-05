;;
;;
;;컴퓨터정보공학부 201521514 
;;최해랑
;;인공지능프로그래밍설계과제 
;;함수의 이름은 pdf자료에 따라 모두 대문자로 정의했습니다
;;11번의 경우 함수 이름이 같으므로 my-length-1, my-length-2로 각각 정의했습니다
;;


;;문제 1번 

(defun DOT-PRODUCT (X Y)
  "This function returns dot-product value of two lists"
  (+ (+ (* (car x) (car y)) (* (cadr x) (cadr y))) (* (caddr x) (caddr y))))

;;문제 2-1번 

(defun FAHRENHEIT-TO-CELSIUS (F)
  "This function converts degrees Farenheit to degree Celsius"
  (- (/ (+ F 40) 1.8) 40))

;;문제 2-2번
(defun CELSIUS-TO-FAHRENHEIT (C)
  "This funcion converts degrees Celsius to degrees Farenheit"
  (- (* (+ C 40) 1.8) 40))

;;문제 3번

(defun MY-EVENP (x)
  "This function returns T when input number is even, else it returns NIL"
  (zerop (rem x 2)))

;;문제 4번
(defun NAND (x y)
  "This function returns a result value of Nand of x and y"
  (not (and x y)))
  
;;문제 5번
(defun ROTATE-RIGHT (lst)
  "This function rotates elements of list to the right direction"
   (append (last lst) (reverse (rest (reverse lst)))))

;;문제 6번
(defun ROTATE-LEFT (lst)
  "This function rotates elements of list to the left direction"
  (append (rest lst) (list (first lst))))

;;문제 7번
(defun MY-RANGE (lst)
  "This function returns a new list set of smallest and largest number of input lists"
  (let ((smallest (first lst))
        (largest (first lst))
        (result nil))
    (dolist (element (rest lst) result)
      (when (< element smallest) (setf smallest element))
      (when (> element largest) (setf largest element))
      (setf result (list smallest largest)))))

;;문제 8번 
(defun POWER-OF-NUMBER (num expo)
  "This function returns to the power of N"
  (do ((cnt expo (- cnt 1))
       (result 1 (* result num)))
      ((zerop cnt) result)))

;;문제 9번 
(defun MY-MEMBER (element lst)
  "This functions checks whether an item is a member of a list"
  (do ((x lst (cdr x))
       (y (first lst) (car x))
       (result lst x))
      ((null result) nil) ;;x를 출력하면 다음 업데이트 값이 출력되기 때문에 RESULT변수 생성 
    (when (equal y element) (return result))))

;;문제 10번
(defun MY-REVERSE (lst)
  "This function reverses the sequence of list elements"
        (do ((x lst (cdr x))
             (y '() (cons (car x) y)))
            ((null x) y)))
     

;;문제 11-1번
(defun MY-LENGTH-1 (lst)
  "This function returns length of a list"
  (let ((len 0))
    (dolist (element lst len)
      (setf element element)
      (setf len (+ len 1)))))

;;문제 11-2번
(defun MY-LENGTH-2 (lst)
  "This function returns length of a list"
  (do ((x lst (cdr x))
       (cnt 0 (+ cnt 1)))
       ((null x) cnt)))
       
    
  
  
  
       



       
  
  
  
  
  
  
  
  
  
  
  
  