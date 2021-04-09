cdef str BUILTINS_NAME
cdef str ITER_METHOD
cdef str AITER_METHOD
cdef str NEXT_METHOD
cdef str GETITEM_METHOD
cdef str CLASS_GETITEM_METHOD
cdef str SETITEM_METHOD
cdef str DELITEM_METHOD
cdef str CONTAINS_METHOD
cdef str KEYS_METHOD

cpdef int decorated_with_property(node) except -1
cdef int _is_property_decorator(decorator) except -1
cpdef int has_known_bases(klass, context=*) except -1
cpdef int is_builtin_object(node) except -1
cpdef int is_classdef_type(node) except -1
cpdef int is_comprehension(node) except -1
cpdef int is_inside_abstract_class(node) except -1
cpdef int class_is_abstract(node) except -1
# cdef int _is_abstract_class_name(str name) except -1
cpdef int is_iterable(value, bint check_async=*) except -1
# cdef int _supports_protocol_method(value, str attr) except -1
cdef int _supports_protocol(
    value, protocol_callback
) except -1
cpdef int is_mapping(value) except -1
cpdef int is_postponed_evaluation_enabled(node) except -1
cpdef int is_super(node) except -1
cpdef int node_ignores_exception(
    node, exception=*
) except -1
cpdef int supports_getitem(
    value, node
) except -1
cpdef int is_class_subscriptable_pep585_with_postponed_evaluation_enabled(
    value, node
) except -1
cpdef int supports_membership_test(value) except -1
