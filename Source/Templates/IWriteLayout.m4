namespace _Namespace {

// This file was GCode generated. Feel free to modify the result.
// .NET Core OK!
//     netcoreapp2.0

using System.IO;
using System.Text;

// Serialize this class.
using TClass = _TClass;

// The default serialization format for TClass.
using TFormat = _TFormat;

/// <remarks>
/// Extend <see cref="_TClass()"/> to support IWriteLayout<_TClass>.
/// IWriteLayout is a way of serializing objects to/from strings,
/// StringBuilders and Streams.
///
/// Todo: Mark <see cref="_TClass()"/> partial.
/// </remarks>
partial class _TClass : IWriteLayout<TClass>
{
    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string. The string
    /// format is defined by the specified format.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter
    /// is passed initialized; any value originally supplied in
    /// result will be overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, IWriteLayoutFormat<TClass> format, Stream dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, format, dst);
    }

    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string. The string
    /// format is defined by the default _TFormat object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is
    /// passed initialized; any value originally supplied in result
    /// will be overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, Stream dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, dst);
    }

    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string. The string
    /// format is defined by the specified format.</param>
    /// <param name="format">An object that implements
    /// IWriteLayout&lt;_TClass&gt;. This object controls the format
    /// of result.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is
    /// passed initialized; any value originally supplied in result
    /// will be overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, IWriteLayoutFormat<TClass> format, StringBuilder dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, format, dst);
    }

    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string. The string
    /// format is defined by the default _TFormat object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, StringBuilder dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, dst);
    }

    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string. The string
    /// format is defined by the specified format.</param>
    /// <param name="format">An object that implements
    /// IWriteLayout&lt;_TClass&gt;. This object controls the format
    /// of result.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is
    /// passed uninitialized; any value originally supplied in
    /// result will be overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, IWriteLayoutFormat<TClass> format, out string dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, format, out dst);
    }

    /// <summary>
    /// Tries to convert the specified <see cref="_TClass()"/>
    /// object to its string equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A <see cref="_TClass()"/> to convert to a string. The string
    /// format is defined by the default _TFormat object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the <see cref="_TClass()"/> s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, out string dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, out dst);
    }
}} // class:namespace
