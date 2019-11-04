generic
 type Element is private;
 with function "=" (E1, E2 : Element) return Boolean is <>;
 with function "<" (E1, E2 : Element) return Boolean is <>;
 type Index is (<>);
 type Arr is array (Index range <>) of Element;

procedure Bubble_Sort_module (A : in out Arr);
