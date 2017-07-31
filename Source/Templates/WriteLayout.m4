namespace _Namespace {

// This file was GCode generated. Feel free to modify the result.
// .NET Core OK!
//     netcoreapp2.0

using System;
using System.IO;
using System.Text;

// Serialize this class.
using TClass = _TClass;

// The default serialization format for TClass.
using TFormat = _TClass()._TFormat();

partial class _TClass {
public sealed class _TFormat : WriteLayout<TClass>, IWriteLayoutFormat<TClass>
{
    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string.
    /// The string format is defined by the default
    /// <see cref="_TFormat()"/> object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the
    /// conversion succeeded, or empty if the conversion failed.
    /// This parameter is passed initialized; any value originally
    /// supplied in result will be overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise,
    /// false.</returns>
    public override bool TryWrite(TClass s, StringBuilder dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, dst);
    }

    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a
    /// string. The string format is defined by the default
    /// <see cref="_TFormat()"/> object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is
    /// passed initialized; any value originally supplied in result
    /// will be overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise,
    /// false.</returns>
    public override bool TryWrite(TClass s, Stream dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, dst);
    }
} // Layout
}} // class:namespace
