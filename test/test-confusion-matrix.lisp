(in-package :mgl-util)

(defun test-confusion-matrix ()
  (let ((m (make-instance 'confusion-matrix)))
    (incf (confusion-count m 'cat 'cat) 5)
    (setf (confusion-count m 'cat 'dog) 2)
    (incf (confusion-count m 'dog 'cat) 3)
    (incf (confusion-count m 'dog 'dog) 3)
    (incf (confusion-count m 'dog 'rabbit) 2)
    (incf (confusion-count m 'rabbit 'dog) 1)
    (incf (confusion-count m 'rabbit 'rabbit) 11)
    (pprint m)))
