import cython

from pylint.checkers.utils cimport (
    decorated_with_property,
    has_known_bases,
    is_builtin_object,
    is_classdef_type,
    is_comprehension,
    is_inside_abstract_class,
    is_iterable,
    is_mapping,
    is_postponed_evaluation_enabled,
    is_super,
    node_ignores_exception,
    supports_getitem,
    supports_membership_test,
)

# cdef _check_iterable(checker, node, bint check_async=*)
# cdef _check_mapping(checker, node)

cdef set STR_FORMAT
cdef str ASYNCIO_COROUTINE
cdef str BUILTIN_TUPLE
cdef tuple TYPE_ANNOTATION_NODES_TYPES

# cdef int _is_asyncio_coroutine(node) except -1
# cdef tuple _get_nomember_msgid_hint(checker, node, owner)
# cdef _check_assignment_from_function_call(checker, node)
# cdef _check_dundername_is_string(checker, node)
# cdef _check_argument_order(checker, node, call_site, called, called_param_names)
# cdef _check_isinstance_args(checker, node)
# cdef _check_invalid_sequence_index(checker, subscript)
# @cython.locals(invalid_slices=cython.int)
# cdef _check_invalid_slice_index(checker, node)
# @cython.locals(allowed_nested_syntax=cython.bint)
# cdef _detect_unsupported_alternative_union_syntax(checker, node)
# cdef _check_unsupported_alternative_union_syntax(checker, node)
# cdef _check_membership_test(checker, node)
# 
# cdef tuple _determine_callable(callable_obj)
# cdef int _emit_no_member(node, owner, str owner_name, bint ignored_mixins=*, bint ignored_none=*) except -1
# cdef int _has_parent_of_type(node, node_type, statement) except -1
# cdef _infer_from_metaclass_constructor(cls, func)
# cdef int _is_c_extension(module_node) except -1
# # cdef int _is_invalid_isinstance_type(arg) except -1
# # cdef int _is_invalid_metaclass(metaclass) except -1
# # cdef int _is_owner_ignored(owner, str attrname, ignored_classes, ignored_modules) except -1
# cdef str _missing_member_hint(owner, str attrname, int distance_threshold, max_choices)
# # cdef int _no_context_variadic(node, str variadic_name, variadic_type, variadics) except -1
# cdef int _no_context_variadic_keywords(node, scope) except -1
# cdef int _no_context_variadic_positional(node, scope) except -1
# @cython.locals(name=str)
# cdef list _similar_names(owner, str attrname, int distance_threshold, max_choices)
# @cython.locals(distance=int)
# cdef int _string_distance(seq1, seq2) except -1
# 
# 
# # @cython.final
# # cdef class IterableChecker(BaseChecker)
# # 
# # @cython.final
# # cdef class IterableChecker(BaseChecker)
