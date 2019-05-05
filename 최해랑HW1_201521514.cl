;;
;;
;;��ǻ���������к� 201521514 
;;���ض�
;;�ΰ��������α׷��ּ������ 
;;�Լ��� �̸��� pdf�ڷῡ ���� ��� �빮�ڷ� �����߽��ϴ�
;;11���� ��� �Լ� �̸��� �����Ƿ� my-length-1, my-length-2�� ���� �����߽��ϴ�
;;


;;���� 1�� 

(defun DOT-PRODUCT (X Y)
  "This function returns dot-product value of two lists"
  (+ (+ (* (car x) (car y)) (* (cadr x) (cadr y))) (* (caddr x) (caddr y))))

;;���� 2-1�� 

(defun FAHRENHEIT-TO-CELSIUS (F)
  "This function converts degrees Farenheit to degree Celsius"
  (- (/ (+ F 40) 1.8) 40))

;;���� 2-2��
(defun CELSIUS-TO-FAHRENHEIT (C)
  "This funcion converts degrees Celsius to degrees Farenheit"
  (- (* (+ C 40) 1.8) 40))

;;���� 3��

(defun MY-EVENP (x)
  "This function returns T when input number is even, else it returns NIL"
  (zerop (rem x 2)))

;;���� 4��
(defun NAND (x y)
  "This function returns a result value of Nand of x and y"
  (not (and x y)))
  
;;���� 5��
(defun ROTATE-RIGHT (lst)
  "This function rotates elements of list to the right direction"
   (append (last lst) (reverse (rest (reverse lst)))))

;;���� 6��
(defun ROTATE-LEFT (lst)
  "This function rotates elements of list to the left direction"
  (append (rest lst) (list (first lst))))

;;���� 7��
(defun MY-RANGE (lst)
  "This function returns a new list set of smallest and largest number of input lists"
  (let ((smallest (first lst))
        (largest (first lst))
        (result nil))
    (dolist (element (rest lst) result)
      (when (< element smallest) (setf smallest element))
      (when (> element largest) (setf largest element))
      (setf result (list smallest largest)))))

;;���� 8�� 
(defun POWER-OF-NUMBER (num expo)
  "This function returns to the power of N"
  (do ((cnt expo (- cnt 1))
       (result 1 (* result num)))
      ((zerop cnt) result)))

;;���� 9�� 
(defun MY-MEMBER (element lst)
  "This functions checks whether an item is a member of a list"
  (do ((x lst (cdr x))
       (y (first lst) (car x))
       (result lst x))
      ((null result) nil) ;;x�� ����ϸ� ���� ������Ʈ ���� ��µǱ� ������ RESULT���� ���� 
    (when (equal y element) (return result))))

;;���� 10��
(defun MY-REVERSE (lst)
  "This function reverses the sequence of list elements"
        (do ((x lst (cdr x))
             (y '() (cons (car x) y)))
            ((null x) y)))
     

;;���� 11-1��
(defun MY-LENGTH-1 (lst)
  "This function returns length of a list"
  (let ((len 0))
    (dolist (element lst len)
      (setf element element)
      (setf len (+ len 1)))))

;;���� 11-2��
(defun MY-LENGTH-2 (lst)
  "This function returns length of a list"
  (do ((x lst (cdr x))
       (cnt 0 (+ cnt 1)))
       ((null x) cnt)))
       
    
  
  
  
       



       
  
  
  
  
  
  
  
  
  
  
  
  