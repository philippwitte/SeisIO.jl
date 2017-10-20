module SeisIO

    #Types
    include("types/IBMFloat32.jl")
    include("types/BinaryFileHeader.jl")
    include("types/BinaryTraceHeader.jl")
    include("types/FileHeader.jl")
    include("types/SeisBlock.jl")
    include("types/BlockScan.jl")
    include("types/SeisCon.jl")

    #Reader
    include("read/read_fileheader.jl")
    include("read/read_traceheader.jl")
    include("read/read_trace.jl")
    include("read/read_file.jl")
    include("read/segy_read.jl")
    include("read/read_block.jl")
    include("read/read_block_headers.jl")
    include("read/read_con.jl")
    include("read/read_con_headers.jl")
    include("read/extract_con_headers.jl")

    # Writer
    include("write/write_fileheader.jl")
    include("write/segy_write.jl")
    include("write/write_trace.jl")

    # Scanner
    include("scan/scan_file.jl")
    include("scan/segy_scan.jl")
    include("scan/scan_chunk.jl")
    include("scan/scan_block.jl")
    include("scan/scan_shots.jl")
    include("scan/delim_vector.jl")
    include("scan/find_next_delim.jl")

    # Workspace
    th_b2s = SeisIO.th_byte2sample()
    blank_th = BinaryTraceHeader()

    # Methods
    include("methods/ordered_pmap.jl")
    include("methods/merge.jl")
    include("methods/split.jl")
    include("methods/set_header.jl")
    include("methods/get_header.jl")
    include("methods/get_sources.jl")
    
    module Patches
        
        using SeisIO, JLD

        # Types
        include("Patches/InterpRegion.jl")
        include("Patches/Patch.jl")
        include("Patches/Zone.jl")


    end
end # module
