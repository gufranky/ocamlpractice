module type Map = sig
 (** [('k, 'v) t] 是一个映射的类型，它将键（'k 类型）绑定到值（'v 类型）。 *)
 type ('k, 'v) t
 (** [empty] 表示一个不包含任何键的映射。 *)
 val empty : ('k, 'v) t
 (** [insert k v m] 返回一个新的映射，其中 [k] 绑定到 [v]，并且包含 [m] 中的所有绑定。
 如果 [k] 在 [m] 中已经有绑定，则新映射中 [k] 的绑定将被 [v] 替代。 *)
 val insert : 'k -> 'v -> ('k, 'v) t -> ('k, 'v) t
 (** [lookup k m] 返回在映射 [m] 中与键 [k] 绑定的值。
 如果 [k] 在 [m] 中没有绑定，则会引发 [Not_found] 异常。 *)
 val lookup : 'k -> ('k, 'v) t -> 'v
 (** [bindings m] 返回一个关联列表，该列表包含 [m] 中所有的绑定关系。
 该列表中的键保证是唯一的。 *)
 val bindings : ('k, 'v) t -> ('k * 'v) list
end
module Mymap : Map = struct
  type ('k, 'v) t = ('k * 'v) list
  let empty = []
  let insert k v m = (k, v) :: List.remove_assoc k m
  let remove_assoc k m = List.filter(fun (k',_)->k<>k')m
  let lookup k m = snd(List.hd(List.filter (fun(k',_)->k=k') m))
  let bindings m = m
end