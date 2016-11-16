%AVL Tree
height(empty, 0).
height(tree(_, Left, Right), Sol):- height(Left, S), Sol is S + 1.
height(tree(_, Left, Right), Sol):- height(Right, S), Sol is S + 1.

left_rotation(tree(_, Left, Right)):- height(Left, S) < height(Right, S), construye nuevo árbol vlanceado
