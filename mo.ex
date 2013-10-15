
defmodule Mo do
  # 
  def mods do 
    puts_mods
  end

  def methods(obj)
  when obj == Kernel
  when obj == "Kernel" do
    puts_methods_kernel
  end

  def methods(obj)
  when is_integer(obj)
  when obj == Integer
  when obj == "Integer" do
    puts_methods_integer
  end

  def methods(obj)
  when obj == Enum 
  when obj == "Enum" do
    puts_methods_enum
  end

  def methods(obj)
  when obj == File
  when obj == "File" do
    puts_methods_file
  end

  def methods(obj)
  when obj == Dict
  when obj == "Dict" do
    puts_methods_dict("Dict")
  end

  def methods(obj)
  when obj == HashDict
  when obj == "HashDict" do
    puts_methods_dict("HashDict")
  end

  def methods(obj)
  when obj == Set
  when obj == "Set" do
    puts_methods_set
  end

  def methods(obj)
  when obj == HashSet
  when obj == "HashSet" do
    puts_methods_hashset
  end

  def methods(obj)
  when obj == IO
  when obj == "IO" do
    puts_methods_io
  end

  def methods(obj)
  when is_list(obj)
  when obj == List
  when obj == "List" do
    puts_methods_list
  end

  def methods(obj)
  when obj == ListDict
  when obj == "ListDict" do
    puts_methods_listdict
  end

  def methods(obj)
  when obj == URI
  when obj == "URI" do
    puts_methods_uri
  end

  def methods(obj)
  when obj == Regex
  when obj == "Regex" do
    puts_methods_regex
  end

  def methods(obj)
  when obj == Version 
  when obj == "Version" do
    puts_methods_version
  end

  # 
  def methods(obj)
  when is_boolean(obj)
  when obj == Boolean
  when obj == "Boolean" do
    IO.puts "boolean"
  end

  def methods(obj)
  when is_float(obj)
  when obj == Float
  when obj == "Float" do
    IO.puts "float"
  end

  def methods(obj)
  when is_function(obj)
  when obj == Function
  when obj == "Function" do
    IO.puts "function"
  end

  def methods(obj)
  when is_tuple(obj)
  when obj == Tuple
  when obj == "Tuple" do
    IO.puts "tuple"
  end

  def methods(obj)
  when is_pid(obj) do
    IO.puts "pid"
  end

  def methods(obj)
  when is_port(obj)
  when obj == Port
  when obj == "Port" do
    IO.puts "port"
  end

  def methods(obj)
  when is_reference(obj) do
    IO.puts "reference"
  end

  def methods(obj)
  when is_atom(obj) do
    IO.puts "atom"
  end

  def methods(obj)
  when is_bitstring(obj) do
    puts_methods_string
  end

  def methods(obj)
  when is_binary(obj) do
    IO.puts "binary"
  end


  # below is not called generally.
  def methods(obj)
  when is_number(obj) do
    IO.puts "number"
  end

  def methods(_) do
    IO.puts "nothing."
  end

  # private
  def puts_mods do
    mods = [
      #"Behaviour",
      #"Bitwise",
      #"Code",
      "Dict",
      #"EEx",
      #"EEx.",
      #"EEx.",
      #"EEx.",
      #"EEx.",
      "Enum",
      #"ExUnit",
      #"ExUnit.",
      #"ExUnit.",
      #"ExUnit.",
      #"ExUnit.",
      #"ExUnit.",
      #"ExUnit.",
      #"ExUnit.",
      #"Exception",
      "File",
      #"GenEvent.Behaviour",
      #"GenFSM.Behaviour",
      #"GenServer.Behaviour",
      "HashDict",
      "HashSet",
      #"IEx",
      #"IEx.Helpers",
      #"IEx.Options",
      "IO",
      #"IO.ANSI",
      #"Inspect.Algebra",
      "Integer",
      "Kernel",
      #"Kernel.",
      #"Kernel.",
      #"Kernel.",
      #"Kernel.",
      #"Keyword",
      "List",
      "ListDict",
      #"Macro",
      #"Mix",
      #"Mix.Archive",
      #"Mix.Deps",
      #"Mix.Generator",
      #"Mix.Project",
      #"Mix.SCM",
      #"Mix.Shell",
      #"Mix.Shell.IO",
      #"Mix.Shell.Process",
      #"Mix.Task",
      #"Mix.Tasks.App.Start",
      #"Mix.Tasks.Archive",
      #"Mix.Tasks.Clean",
      #"Mix.Tasks.Cmd",
      #"Mix.Tasks.Compile",
      #"Mix.Tasks.Compile.App",
      #"Mix.Tasks.Compile.Elixir",
      #"Mix.Tasks.Compile.Erlang",
      #"Mix.Tasks.Compile.Leex",
      #"Mix.Tasks.Compile.Yecc",
      #"Mix.Tasks.Deps",
      #"Mix.Tasks.Deps.Check",
      #"Mix.Tasks.Deps.Clean",
      #"Mix.Tasks.Deps.Compile",
      #"Mix.Tasks.Deps.Get",
      #"Mix.Tasks.Deps.Loadpaths",
      #"Mix.Tasks.Deps.Unlock",
      #"Mix.Tasks.Deps.Update",
      #"Mix.Tasks.Do",
      #"Mix.Tasks.Escriptize",
      #"Mix.Tasks.Help",
      #"Mix.Tasks.Loadpaths",
      #"Mix.Tasks.Local",
      #"Mix.Tasks.Local.Install",
      #"Mix.Tasks.Local.Rebar",
      #"Mix.Tasks.Local.Uninstall",
      #"Mix.Tasks.New",
      #"Mix.Tasks.Run",
      #"Mix.Tasks.Test",
      #"Mix.Utils",
      #"Module",
      #"Node",
      #"OptionParser",
      #"Path",
      "Port",
      #"Process",
      #"Record",
      "Regex",
      "Set",
      #"Stream",
      "String",
      #"Supervisor.Behaviour",
      #"System",
      "URI",
      "Version"
      ]
    Enum.map mods, &(IO.puts &1)
  end

  def puts_methods_integer do
    methods = [
      "even?(n)",
      "odd?(n)"
      ]
    Enum.map methods, &(IO.puts "Integer." <> &1)
  end

  def puts_methods_kernel do
    functions = [
      "!", "!=", "!==",
      "*", "+", "++", "-", "--",
      "/", "<", "<-", "<=", "<>", "==", "===", "=~",
      ">", ">=",
      "abs",
      "apply",
      "atom_to_binary",
      "atom_to_list",
      "binary_part",
      "binary_to_atom",
      "binary_to_existing_atom",
      "binary_to_float",
      "binary_to_integer",
      "binary_to_term",
      "bit_size",
      "binstring_to_list",
      "byte_size",
      "exit",
      "float_to_binary",
      "float_to_list",
      "function_exported?",
      "hd",
      "inspect",
      "integer_to_binary",
      "integer_to_list",
      "iolist_size",
      "iolist_to_binary",
      "is_alive",
      "is_atom",
      "is_binary",
      "is_bitstring",
      "is_boolean",
      "is_float",
      "is_function",
      "is_integer",
      "is_list",
      "is_number",
      "is_pid",
      "is_port",
      "is_reference",
      "is_tuple",
      "length",
      "list_to_atom",
      "list_to_bitstring",
      "list_to_existing_atom",
      "list_to_float",
      "list_to_integer",
      "list_to_pid",
      "list_to_tuple",
      "macro_exported?",
      "make_ref",
      "max",
      "min",
      "node",
      "not", 
      "pid_to_list",
      "raise",
      "round",
      "self",
      "size",
      "spawn",
      "spawn_link",
      "term_to_binary",
      "throw",
      "tl",
      "trunc",
      "tuple_size",
      "tuple_to_list"
      ]

    macros = [
      "&&", "..", "<>", "@",
      "access",
      "and",
      "atom_to_binary",
      "binary_to_atom",
      "binary_to_existing_atom",
      "binding",
      "case",
      "cond",
      "def",
      "defdelegate",
      "defexception",
      "defimpl",
      "defmacro",
      "defmodule",
      "defoverridable",
      "defp",
      "defprotocol",
      "defrecord",
      "defrecordp",
      "delete_elem",
      "destructure",
      "div",
      "elem",
      "if",
      "in",
      "insert_elem",
      "is_exception",
      "is_range",
      "is_record",
      "is_regex",
      "match?",
      "nil?",
      "or",
      "raise",
      "receive",
      "rem",
      "set_elem",
      "sigil_C",
      "sigil_R",
      "sigil_S",
      "sigil_W",
      "sigil_c",
      "sigil_r",
      "sigil_s",
      "sigil_w",
      "to_char_list",
      "to_string",
      "try",
      "unless",
      "use",
      "xor",
      "|>",
      "||"
      ]

    func_and_macro = functions ++ macros
    Enum.map func_and_macro, &(IO.puts "Kernel." <> &1)
  end

  def puts_methods_file do
    functions = [
      "binstream!",
      "cd","cd!",
      "chgrp","chgrp!",
      "chmod","chmod!",
      "chown","chown!",
      "close",
      "copy","copy!",
      "cp","cp!",
      "cp_r","cp_r!",
      "cwd", "cwd!",
      "dir?",
      "exists?",
      "ls", "ls!",
      "mkdir", "mkdir!",
      "mkdir_p", "mkdir_p",
      "open", "open!",
      "read", "read!",
      "regular?",
      "rm", "rm!",
      "rm_rf", "rm_rf!",
      "rmdir", "rmdir!",
      "stat", "stat!",
      "stream",
      "touch", "touch!",
      "write", "write!",
      "write_stat", "write_stat!"
      ]
    Enum.map functions, &(IO.puts "File." <> &1)
  end

  def puts_methods_dict(htype // "Dict") do
    functions = [
      "delete",
      "drop",
      "empty",
      "equal?",
      "fetch", "fetch!",
      "get",
      "has_key?",
      "keys",
      "merge",
      "new",
      "pop",
      "put",
      "put_new",
      "size",
      "split",
      "take",
      "to_list",
      "update", "update!",
      "values"
      ]
    Enum.map functions, &(IO.puts htype <> "." <> &1)
  end

  def puts_methods_set do
    functions = [
      "delete",
      "difference",
      "disjoint?",
      "empty",
      "equal?",
      "intersection",
      "member?",
      "put",
      "size",
      "subject?",
      "to_list",
      "union"
      ]
    Enum.map functions, &(IO.puts "Set." <> &1)
  end

  # HashSet has additional function "new" compared with Set.
  def puts_methods_hashset do
    functions = [
      "delete",
      "difference",
      "disjoint?",
      "empty",
      "equal?",
      "intersection",
      "member?",
      "new",
      "put",
      "size",
      "subject?",
      "to_list",
      "union"
      ]
    Enum.map functions, &(IO.puts "HashSet." <> &1)
  end

  def puts_methods_io do
    functions = [
      "binread",
      "binstream",
      "binwrite",
      "getn",
      "gets",
      "inspect",
      "puts",
      "read",
      "stream",
      "write"
      ]
    Enum.map functions, &(IO.puts "IO." <> &1)
  end

  def puts_methods_list do
    functions = [
      "delete",
      "duplicate",
      "flatten",
      "foldl",
      "foldr",
      "insert_at",
      "keydelete",
      "keyfind",
      "keymember?",
      "keyreplace",
      "keysort",
      "keystore",
      "last",
      "replace_at",
      "unzip",
      "wrap",
      "zip"
      ]
    Enum.map functions, &(IO.puts "List." <> &1)
  end

  def puts_methods_listdict do
    functions = [
      "delete",
      "drop",
      "empty",
      "equal?",
      "fetch", "fetch!",
      "get",
      "has_key?",
      "keys",
      "merge",
      "new",
      "pop",
      "put",
      "put_new",
      "size",
      "split",
      "take",
      "to_list",
      "update", "update!",
      "values"
      ]
    Enum.map functions, &(IO.puts "ListDict." <> &1)
  end

  def puts_methods_string do
    methods = [
      "at",
      "capitalize",
      "codepoints",
      "contains?",
      "downcase",
      "duplicate",
      "ends_with?",
      "first",
      "from_char_list",
      "from_char_list!",
      "graphemes",
      "last",
      "length",
      "ljust",
      "lstrip",
      "next_codepoint",
      "next_grapheme",
      "printable?",
      "replace",
      "reverse",
      "rjust",
      "rstrip",
      "slice",
      "split",
      "start_with?",
      "strip",
      "to_char_list",
      "to_char_list!",
      "to_float",
      "to_integer",
      "upcase",
      "valid?",
      "valid_character?"
      ]
    Enum.map methods, &(IO.puts "String." <> &1)
  end

  def puts_methods_enum do
    functions = [
      "all?",
      "any?",
      "at",
      "chunks",
      "chunks_by",
      "concat",
      "count",
      "drop",
      "drop_while",
      "each",
      "empty?",
      "fetch", "fetch!",
      "filter",
      "filter_map",
      "find",
      "find_index",
      "find_value",
      "first",
      "flat_map",
      "join",
      "map",
      "map_join",
      "map_reduce",
      "max",
      "max_by",
      "member?",
      "min",
      "min_by",
      "partition",
      "reduce",
      "reject",
      "reverse",
      "shuffle",
      "slice",
      "sort",
      "split",
      "split_while",
      "take",
      "take_every",
      "take_while",
      "to_list",
      "uniq",
      "with_index",
      "zip"
      ]
    Enum.map functions, &(IO.puts "Enum." <> &1)
  end

  def puts_methods_uri do
    functions = [
      "decode",
      "decode_query",
      "decode_port",
      "default_port",
      "encode",
      "encode_query",
      "normalize_scheme",
      "parse",
      "query_decoder"
      ]
    Enum.map functions, &(IO.puts "URI." <> &1)
  end

  def puts_methods_regex do
    functions = [
      "compile",
      "escape",
      "groups",
      "match?",
      "named_capgures",
      "opts",
      "re_pattern",
      "replace",
      "run",
      "scan",
      "source",
      "split"
      ]
    Enum.map functions, &(IO.puts "Regex." <> &1)
  end

  def puts_methods_version do
    functions = [
      "from_matchable",
      "match?",
      "parse",
      "to_matchable",
      "valid?"
      ]
    Enum.map functions, &(IO.puts "Version." <> &1)
  end
end
